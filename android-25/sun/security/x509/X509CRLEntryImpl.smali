.class public Lsun/security/x509/X509CRLEntryImpl;
.super Ljava/security/cert/X509CRLEntry;
.source "X509CRLEntryImpl.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/security/cert/X509CRLEntry;",
        "Ljava/lang/Comparable",
        "<",
        "Lsun/security/x509/X509CRLEntryImpl;",
        ">;"
    }
.end annotation


# static fields
.field private static final YR_2050:J = 0x24bd0146400L

.field private static final isExplicit:Z


# instance fields
.field private certIssuer:Ljavax/security/auth/x500/X500Principal;

.field private extensions:Lsun/security/x509/CRLExtensions;

.field private revocationDate:Ljava/util/Date;

.field private revokedCert:[B

.field private serialNumber:Lsun/security/x509/SerialNumber;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/util/Date;)V
    .locals 1
    .param p1, "num"    # Ljava/math/BigInteger;
    .param p2, "date"    # Ljava/util/Date;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 91
    invoke-direct {p0}, Ljava/security/cert/X509CRLEntry;-><init>()V

    #@4
    .line 75
    iput-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->serialNumber:Lsun/security/x509/SerialNumber;

    #@6
    .line 76
    iput-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->revocationDate:Ljava/util/Date;

    #@8
    .line 77
    iput-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    #@a
    .line 78
    iput-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->revokedCert:[B

    #@c
    .line 92
    new-instance v0, Lsun/security/x509/SerialNumber;

    #@e
    invoke-direct {v0, p1}, Lsun/security/x509/SerialNumber;-><init>(Ljava/math/BigInteger;)V

    #@11
    iput-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->serialNumber:Lsun/security/x509/SerialNumber;

    #@13
    .line 93
    iput-object p2, p0, Lsun/security/x509/X509CRLEntryImpl;->revocationDate:Ljava/util/Date;

    #@15
    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/util/Date;Lsun/security/x509/CRLExtensions;)V
    .locals 1
    .param p1, "num"    # Ljava/math/BigInteger;
    .param p2, "date"    # Ljava/util/Date;
    .param p3, "crlEntryExts"    # Lsun/security/x509/CRLExtensions;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 105
    invoke-direct {p0}, Ljava/security/cert/X509CRLEntry;-><init>()V

    #@4
    .line 75
    iput-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->serialNumber:Lsun/security/x509/SerialNumber;

    #@6
    .line 76
    iput-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->revocationDate:Ljava/util/Date;

    #@8
    .line 77
    iput-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    #@a
    .line 78
    iput-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->revokedCert:[B

    #@c
    .line 107
    new-instance v0, Lsun/security/x509/SerialNumber;

    #@e
    invoke-direct {v0, p1}, Lsun/security/x509/SerialNumber;-><init>(Ljava/math/BigInteger;)V

    #@11
    iput-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->serialNumber:Lsun/security/x509/SerialNumber;

    #@13
    .line 108
    iput-object p2, p0, Lsun/security/x509/X509CRLEntryImpl;->revocationDate:Ljava/util/Date;

    #@15
    .line 109
    iput-object p3, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    #@17
    .line 106
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 4
    .param p1, "derValue"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 133
    invoke-direct {p0}, Ljava/security/cert/X509CRLEntry;-><init>()V

    #@4
    .line 75
    iput-object v1, p0, Lsun/security/x509/X509CRLEntryImpl;->serialNumber:Lsun/security/x509/SerialNumber;

    #@6
    .line 76
    iput-object v1, p0, Lsun/security/x509/X509CRLEntryImpl;->revocationDate:Ljava/util/Date;

    #@8
    .line 77
    iput-object v1, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    #@a
    .line 78
    iput-object v1, p0, Lsun/security/x509/X509CRLEntryImpl;->revokedCert:[B

    #@c
    .line 135
    :try_start_0
    invoke-direct {p0, p1}, Lsun/security/x509/X509CRLEntryImpl;->parse(Lsun/security/util/DerValue;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 133
    return-void

    #@10
    .line 136
    :catch_0
    move-exception v0

    #@11
    .line 137
    .local v0, "e":Ljava/io/IOException;
    iput-object v1, p0, Lsun/security/x509/X509CRLEntryImpl;->revokedCert:[B

    #@13
    .line 138
    new-instance v1, Ljava/security/cert/CRLException;

    #@15
    new-instance v2, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v3, "Parsing error: "

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    #@30
    throw v1
.end method

.method public constructor <init>([B)V
    .locals 4
    .param p1, "revokedCert"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 118
    invoke-direct {p0}, Ljava/security/cert/X509CRLEntry;-><init>()V

    #@4
    .line 75
    iput-object v2, p0, Lsun/security/x509/X509CRLEntryImpl;->serialNumber:Lsun/security/x509/SerialNumber;

    #@6
    .line 76
    iput-object v2, p0, Lsun/security/x509/X509CRLEntryImpl;->revocationDate:Ljava/util/Date;

    #@8
    .line 77
    iput-object v2, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    #@a
    .line 78
    iput-object v2, p0, Lsun/security/x509/X509CRLEntryImpl;->revokedCert:[B

    #@c
    .line 120
    :try_start_0
    new-instance v1, Lsun/security/util/DerValue;

    #@e
    invoke-direct {v1, p1}, Lsun/security/util/DerValue;-><init>([B)V

    #@11
    invoke-direct {p0, v1}, Lsun/security/x509/X509CRLEntryImpl;->parse(Lsun/security/util/DerValue;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 118
    return-void

    #@15
    .line 121
    :catch_0
    move-exception v0

    #@16
    .line 122
    .local v0, "e":Ljava/io/IOException;
    iput-object v2, p0, Lsun/security/x509/X509CRLEntryImpl;->revokedCert:[B

    #@18
    .line 123
    new-instance v1, Ljava/security/cert/CRLException;

    #@1a
    new-instance v2, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v3, "Parsing error: "

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    #@35
    throw v1
.end method

.method private getEncoded0()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    #@0
    .prologue
    .line 199
    iget-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->revokedCert:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 200
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@6
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@9
    invoke-virtual {p0, v0}, Lsun/security/x509/X509CRLEntryImpl;->encode(Lsun/security/util/DerOutputStream;)V

    #@c
    .line 201
    :cond_0
    iget-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->revokedCert:[B

    #@e
    return-object v0
.end method

.method public static getRevocationReason(Ljava/security/cert/X509CRLEntry;)Ljava/security/cert/CRLReason;
    .locals 7
    .param p0, "crlEntry"    # Ljava/security/cert/X509CRLEntry;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 258
    :try_start_0
    const-string/jumbo v5, "2.5.29.21"

    #@4
    invoke-virtual {p0, v5}, Ljava/security/cert/X509CRLEntry;->getExtensionValue(Ljava/lang/String;)[B

    #@7
    move-result-object v1

    #@8
    .line 259
    .local v1, "ext":[B
    if-nez v1, :cond_0

    #@a
    .line 260
    return-object v6

    #@b
    .line 262
    :cond_0
    new-instance v4, Lsun/security/util/DerValue;

    #@d
    invoke-direct {v4, v1}, Lsun/security/util/DerValue;-><init>([B)V

    #@10
    .line 263
    .local v4, "val":Lsun/security/util/DerValue;
    invoke-virtual {v4}, Lsun/security/util/DerValue;->getOctetString()[B

    #@13
    move-result-object v0

    #@14
    .line 266
    .local v0, "data":[B
    new-instance v3, Lsun/security/x509/CRLReasonCodeExtension;

    #@16
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@18
    invoke-direct {v3, v5, v0}, Lsun/security/x509/CRLReasonCodeExtension;-><init>(Ljava/lang/Boolean;Ljava/lang/Object;)V

    #@1b
    .line 267
    .local v3, "rcExt":Lsun/security/x509/CRLReasonCodeExtension;
    invoke-virtual {v3}, Lsun/security/x509/CRLReasonCodeExtension;->getReasonCode()Ljava/security/cert/CRLReason;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    move-result-object v5

    #@1f
    return-object v5

    #@20
    .line 268
    .end local v0    # "data":[B
    .end local v1    # "ext":[B
    .end local v3    # "rcExt":Lsun/security/x509/CRLReasonCodeExtension;
    .end local v4    # "val":Lsun/security/util/DerValue;
    :catch_0
    move-exception v2

    #@21
    .line 269
    .local v2, "ioe":Ljava/io/IOException;
    return-object v6
.end method

.method private parse(Lsun/security/util/DerValue;)V
    .locals 5
    .param p1, "derVal"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 451
    iget-byte v3, p1, Lsun/security/util/DerValue;->tag:B

    #@2
    const/16 v4, 0x30

    #@4
    if-eq v3, v4, :cond_0

    #@6
    .line 452
    new-instance v3, Ljava/security/cert/CRLException;

    #@8
    const-string/jumbo v4, "Invalid encoded RevokedCertificate, starting sequence tag missing."

    #@b
    invoke-direct {v3, v4}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    #@e
    throw v3

    #@f
    .line 455
    :cond_0
    iget-object v3, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@11
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->available()I

    #@14
    move-result v3

    #@15
    if-nez v3, :cond_1

    #@17
    .line 456
    new-instance v3, Ljava/security/cert/CRLException;

    #@19
    const-string/jumbo v4, "No data encoded for RevokedCertificates"

    #@1c
    invoke-direct {v3, v4}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v3

    #@20
    .line 458
    :cond_1
    invoke-virtual {p1}, Lsun/security/util/DerValue;->toByteArray()[B

    #@23
    move-result-object v3

    #@24
    iput-object v3, p0, Lsun/security/x509/X509CRLEntryImpl;->revokedCert:[B

    #@26
    .line 460
    invoke-virtual {p1}, Lsun/security/util/DerValue;->toDerInputStream()Lsun/security/util/DerInputStream;

    #@29
    move-result-object v0

    #@2a
    .line 461
    .local v0, "in":Lsun/security/util/DerInputStream;
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@2d
    move-result-object v2

    #@2e
    .line 462
    .local v2, "val":Lsun/security/util/DerValue;
    new-instance v3, Lsun/security/x509/SerialNumber;

    #@30
    invoke-direct {v3, v2}, Lsun/security/x509/SerialNumber;-><init>(Lsun/security/util/DerValue;)V

    #@33
    iput-object v3, p0, Lsun/security/x509/X509CRLEntryImpl;->serialNumber:Lsun/security/x509/SerialNumber;

    #@35
    .line 465
    iget-object v3, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@37
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->peekByte()I

    #@3a
    move-result v1

    #@3b
    .line 466
    .local v1, "nextByte":I
    int-to-byte v3, v1

    #@3c
    const/16 v4, 0x17

    #@3e
    if-ne v3, v4, :cond_2

    #@40
    .line 467
    iget-object v3, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@42
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getUTCTime()Ljava/util/Date;

    #@45
    move-result-object v3

    #@46
    iput-object v3, p0, Lsun/security/x509/X509CRLEntryImpl;->revocationDate:Ljava/util/Date;

    #@48
    .line 473
    :goto_0
    iget-object v3, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@4a
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->available()I

    #@4d
    move-result v3

    #@4e
    if-nez v3, :cond_4

    #@50
    .line 474
    return-void

    #@51
    .line 468
    :cond_2
    int-to-byte v3, v1

    #@52
    const/16 v4, 0x18

    #@54
    if-ne v3, v4, :cond_3

    #@56
    .line 469
    iget-object v3, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@58
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getGeneralizedTime()Ljava/util/Date;

    #@5b
    move-result-object v3

    #@5c
    iput-object v3, p0, Lsun/security/x509/X509CRLEntryImpl;->revocationDate:Ljava/util/Date;

    #@5e
    goto :goto_0

    #@5f
    .line 471
    :cond_3
    new-instance v3, Ljava/security/cert/CRLException;

    #@61
    const-string/jumbo v4, "Invalid encoding for revocation date"

    #@64
    invoke-direct {v3, v4}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    #@67
    throw v3

    #@68
    .line 477
    :cond_4
    new-instance v3, Lsun/security/x509/CRLExtensions;

    #@6a
    invoke-virtual {p1}, Lsun/security/util/DerValue;->toDerInputStream()Lsun/security/util/DerInputStream;

    #@6d
    move-result-object v4

    #@6e
    invoke-direct {v3, v4}, Lsun/security/x509/CRLExtensions;-><init>(Lsun/security/util/DerInputStream;)V

    #@71
    iput-object v3, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    #@73
    .line 449
    return-void
.end method

.method public static toImpl(Ljava/security/cert/X509CRLEntry;)Lsun/security/x509/X509CRLEntryImpl;
    .locals 2
    .param p0, "entry"    # Ljava/security/cert/X509CRLEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    #@0
    .prologue
    .line 487
    instance-of v0, p0, Lsun/security/x509/X509CRLEntryImpl;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 488
    nop

    #@5
    nop

    #@6
    .end local p0    # "entry":Ljava/security/cert/X509CRLEntry;
    return-object p0

    #@7
    .line 490
    .restart local p0    # "entry":Ljava/security/cert/X509CRLEntry;
    :cond_0
    new-instance v0, Lsun/security/x509/X509CRLEntryImpl;

    #@9
    invoke-virtual {p0}, Ljava/security/cert/X509CRLEntry;->getEncoded()[B

    #@c
    move-result-object v1

    #@d
    invoke-direct {v0, v1}, Lsun/security/x509/X509CRLEntryImpl;-><init>([B)V

    #@10
    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "that"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 521
    check-cast p1, Lsun/security/x509/X509CRLEntryImpl;

    #@2
    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lsun/security/x509/X509CRLEntryImpl;->compareTo(Lsun/security/x509/X509CRLEntryImpl;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public compareTo(Lsun/security/x509/X509CRLEntryImpl;)I
    .locals 9
    .param p1, "that"    # Lsun/security/x509/X509CRLEntryImpl;

    #@0
    .prologue
    .line 522
    invoke-virtual {p0}, Lsun/security/x509/X509CRLEntryImpl;->getSerialNumber()Ljava/math/BigInteger;

    #@3
    move-result-object v7

    #@4
    invoke-virtual {p1}, Lsun/security/x509/X509CRLEntryImpl;->getSerialNumber()Ljava/math/BigInteger;

    #@7
    move-result-object v8

    #@8
    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@b
    move-result v3

    #@c
    .line 523
    .local v3, "compSerial":I
    if-eqz v3, :cond_0

    #@e
    .line 524
    return v3

    #@f
    .line 527
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lsun/security/x509/X509CRLEntryImpl;->getEncoded0()[B

    #@12
    move-result-object v6

    #@13
    .line 528
    .local v6, "thisEncoded":[B
    invoke-direct {p1}, Lsun/security/x509/X509CRLEntryImpl;->getEncoded0()[B

    #@16
    move-result-object v5

    #@17
    .line 529
    .local v5, "thatEncoded":[B
    const/4 v4, 0x0

    #@18
    .local v4, "i":I
    :goto_0
    array-length v7, v6

    #@19
    if-ge v4, v7, :cond_2

    #@1b
    array-length v7, v5

    #@1c
    if-ge v4, v7, :cond_2

    #@1e
    .line 530
    aget-byte v7, v6, v4

    #@20
    and-int/lit16 v0, v7, 0xff

    #@22
    .line 531
    .local v0, "a":I
    aget-byte v7, v5, v4

    #@24
    and-int/lit16 v1, v7, 0xff

    #@26
    .line 532
    .local v1, "b":I
    if-eq v0, v1, :cond_1

    #@28
    sub-int v7, v0, v1

    #@2a
    return v7

    #@2b
    .line 529
    :cond_1
    add-int/lit8 v4, v4, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 534
    .end local v0    # "a":I
    .end local v1    # "b":I
    :cond_2
    array-length v7, v6

    #@2f
    array-length v8, v5
    :try_end_0
    .catch Ljava/security/cert/CRLException; {:try_start_0 .. :try_end_0} :catch_0

    #@30
    sub-int/2addr v7, v8

    #@31
    return v7

    #@32
    .line 535
    .end local v4    # "i":I
    .end local v5    # "thatEncoded":[B
    .end local v6    # "thisEncoded":[B
    :catch_0
    move-exception v2

    #@33
    .line 536
    .local v2, "ce":Ljava/security/cert/CRLException;
    const/4 v7, -0x1

    #@34
    return v7
.end method

.method public encode(Lsun/security/util/DerOutputStream;)V
    .locals 8
    .param p1, "outStrm"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    #@0
    .prologue
    .line 162
    :try_start_0
    iget-object v3, p0, Lsun/security/x509/X509CRLEntryImpl;->revokedCert:[B

    #@2
    if-nez v3, :cond_1

    #@4
    .line 163
    new-instance v2, Lsun/security/util/DerOutputStream;

    #@6
    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    #@9
    .line 165
    .local v2, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v3, p0, Lsun/security/x509/X509CRLEntryImpl;->serialNumber:Lsun/security/x509/SerialNumber;

    #@b
    invoke-virtual {v3, v2}, Lsun/security/x509/SerialNumber;->encode(Lsun/security/util/DerOutputStream;)V

    #@e
    .line 167
    iget-object v3, p0, Lsun/security/x509/X509CRLEntryImpl;->revocationDate:Ljava/util/Date;

    #@10
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    #@13
    move-result-wide v4

    #@14
    const-wide v6, 0x24bd0146400L

    #@19
    cmp-long v3, v4, v6

    #@1b
    if-gez v3, :cond_2

    #@1d
    .line 168
    iget-object v3, p0, Lsun/security/x509/X509CRLEntryImpl;->revocationDate:Ljava/util/Date;

    #@1f
    invoke-virtual {v2, v3}, Lsun/security/util/DerOutputStream;->putUTCTime(Ljava/util/Date;)V

    #@22
    .line 173
    :goto_0
    iget-object v3, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    #@24
    if-eqz v3, :cond_0

    #@26
    .line 174
    iget-object v3, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    #@28
    const/4 v4, 0x0

    #@29
    invoke-virtual {v3, v2, v4}, Lsun/security/x509/CRLExtensions;->encode(Ljava/io/OutputStream;Z)V

    #@2c
    .line 176
    :cond_0
    new-instance v1, Lsun/security/util/DerOutputStream;

    #@2e
    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    #@31
    .line 177
    .local v1, "seq":Lsun/security/util/DerOutputStream;
    const/16 v3, 0x30

    #@33
    invoke-virtual {v1, v3, v2}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    #@36
    .line 179
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@39
    move-result-object v3

    #@3a
    iput-object v3, p0, Lsun/security/x509/X509CRLEntryImpl;->revokedCert:[B

    #@3c
    .line 181
    .end local v1    # "seq":Lsun/security/util/DerOutputStream;
    .end local v2    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_1
    iget-object v3, p0, Lsun/security/x509/X509CRLEntryImpl;->revokedCert:[B

    #@3e
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    #@41
    .line 160
    return-void

    #@42
    .line 170
    .restart local v2    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_2
    iget-object v3, p0, Lsun/security/x509/X509CRLEntryImpl;->revocationDate:Ljava/util/Date;

    #@44
    invoke-virtual {v2, v3}, Lsun/security/util/DerOutputStream;->putGeneralizedTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@47
    goto :goto_0

    #@48
    .line 182
    .end local v2    # "tmp":Lsun/security/util/DerOutputStream;
    :catch_0
    move-exception v0

    #@49
    .line 183
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/security/cert/CRLException;

    #@4b
    new-instance v4, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v5, "Encoding error: "

    #@53
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v4

    #@57
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    #@5a
    move-result-object v5

    #@5b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v4

    #@5f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v4

    #@63
    invoke-direct {v3, v4}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    #@66
    throw v3
.end method

.method public getCertificateIssuer()Ljavax/security/auth/x500/X500Principal;
    .locals 1

    #@0
    .prologue
    .line 206
    iget-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->certIssuer:Ljavax/security/auth/x500/X500Principal;

    #@2
    return-object v0
.end method

.method getCertificateIssuerExtension()Lsun/security/x509/CertificateIssuerExtension;
    .locals 1

    #@0
    .prologue
    .line 501
    sget-object v0, Lsun/security/x509/PKIXExtensions;->CertificateIssuer_Id:Lsun/security/util/ObjectIdentifier;

    #@2
    invoke-virtual {p0, v0}, Lsun/security/x509/X509CRLEntryImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    #@5
    move-result-object v0

    #@6
    .line 500
    check-cast v0, Lsun/security/x509/CertificateIssuerExtension;

    #@8
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
    .line 352
    iget-object v3, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    #@3
    if-nez v3, :cond_0

    #@5
    .line 353
    return-object v4

    #@6
    .line 355
    :cond_0
    new-instance v2, Ljava/util/TreeSet;

    #@8
    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    #@b
    .line 356
    .local v2, "extSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

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
    .line 357
    .local v0, "ex":Lsun/security/x509/Extension;
    invoke-virtual {v0}, Lsun/security/x509/Extension;->isCritical()Z

    #@24
    move-result v3

    #@25
    if-eqz v3, :cond_1

    #@27
    .line 358
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
    .line 361
    .end local v0    # "ex":Lsun/security/x509/Extension;
    :cond_2
    return-object v2
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
    .line 194
    invoke-direct {p0}, Lsun/security/x509/X509CRLEntryImpl;->getEncoded0()[B

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

.method public getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;
    .locals 2
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 440
    iget-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 441
    return-object v1

    #@6
    .line 445
    :cond_0
    iget-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

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
    .line 398
    iget-object v9, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    #@3
    if-nez v9, :cond_0

    #@5
    .line 399
    return-object v10

    #@6
    .line 401
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
    .line 402
    .local v4, "extAlias":Ljava/lang/String;
    const/4 v0, 0x0

    #@10
    .line 404
    .local v0, "crlExt":Lsun/security/x509/Extension;
    if-nez v4, :cond_3

    #@12
    .line 405
    new-instance v6, Lsun/security/util/ObjectIdentifier;

    #@14
    invoke-direct {v6, p1}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@17
    .line 406
    .local v6, "findOID":Lsun/security/util/ObjectIdentifier;
    const/4 v3, 0x0

    #@18
    .line 408
    .local v3, "ex":Lsun/security/x509/Extension;
    iget-object v9, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    #@1a
    invoke-virtual {v9}, Lsun/security/x509/CRLExtensions;->getElements()Ljava/util/Enumeration;

    #@1d
    move-result-object v2

    #@1e
    .line 409
    .end local v3    # "ex":Lsun/security/x509/Extension;
    .local v2, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lsun/security/x509/Extension;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@21
    move-result v9

    #@22
    .line 408
    if-eqz v9, :cond_2

    #@24
    .line 410
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@27
    move-result-object v3

    #@28
    check-cast v3, Lsun/security/x509/Extension;

    #@2a
    .line 411
    .local v3, "ex":Lsun/security/x509/Extension;
    invoke-virtual {v3}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    #@2d
    move-result-object v7

    #@2e
    .line 412
    .local v7, "inCertOID":Lsun/security/util/ObjectIdentifier;
    invoke-virtual {v7, v6}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    #@31
    move-result v9

    #@32
    if-eqz v9, :cond_1

    #@34
    .line 413
    move-object v0, v3

    #@35
    .line 419
    .end local v0    # "crlExt":Lsun/security/x509/Extension;
    .end local v2    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lsun/security/x509/Extension;>;"
    .end local v3    # "ex":Lsun/security/x509/Extension;
    .end local v6    # "findOID":Lsun/security/util/ObjectIdentifier;
    .end local v7    # "inCertOID":Lsun/security/util/ObjectIdentifier;
    :cond_2
    :goto_0
    if-nez v0, :cond_4

    #@37
    .line 420
    return-object v10

    #@38
    .line 418
    .restart local v0    # "crlExt":Lsun/security/x509/Extension;
    :cond_3
    iget-object v9, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    #@3a
    invoke-virtual {v9, v4}, Lsun/security/x509/CRLExtensions;->get(Ljava/lang/String;)Lsun/security/x509/Extension;

    #@3d
    move-result-object v0

    #@3e
    .local v0, "crlExt":Lsun/security/x509/Extension;
    goto :goto_0

    #@3f
    .line 421
    .end local v0    # "crlExt":Lsun/security/x509/Extension;
    :cond_4
    invoke-virtual {v0}, Lsun/security/x509/Extension;->getExtensionValue()[B

    #@42
    move-result-object v5

    #@43
    .line 422
    .local v5, "extData":[B
    if-nez v5, :cond_5

    #@45
    .line 423
    return-object v10

    #@46
    .line 425
    :cond_5
    new-instance v8, Lsun/security/util/DerOutputStream;

    #@48
    invoke-direct {v8}, Lsun/security/util/DerOutputStream;-><init>()V

    #@4b
    .line 426
    .local v8, "out":Lsun/security/util/DerOutputStream;
    invoke-virtual {v8, v5}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    #@4e
    .line 427
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@51
    move-result-object v9

    #@52
    return-object v9

    #@53
    .line 428
    .end local v4    # "extAlias":Ljava/lang/String;
    .end local v5    # "extData":[B
    .end local v8    # "out":Lsun/security/util/DerOutputStream;
    :catch_0
    move-exception v1

    #@54
    .line 429
    .local v1, "e":Ljava/lang/Exception;
    return-object v10
.end method

.method public getExtensions()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/cert/Extension;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 509
    iget-object v4, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    #@2
    if-nez v4, :cond_0

    #@4
    .line 510
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    #@7
    move-result-object v4

    #@8
    return-object v4

    #@9
    .line 512
    :cond_0
    iget-object v4, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    #@b
    invoke-virtual {v4}, Lsun/security/x509/CRLExtensions;->getAllExtensions()Ljava/util/Collection;

    #@e
    move-result-object v2

    #@f
    .line 513
    .local v2, "exts":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/x509/Extension;>;"
    new-instance v3, Ljava/util/TreeMap;

    #@11
    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    #@14
    .line 514
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/security/cert/Extension;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@17
    move-result-object v1

    #@18
    .local v1, "ext$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1b
    move-result v4

    #@1c
    if-eqz v4, :cond_1

    #@1e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Lsun/security/x509/Extension;

    #@24
    .line 515
    .local v0, "ext":Lsun/security/x509/Extension;
    invoke-virtual {v0}, Lsun/security/x509/Extension;->getId()Ljava/lang/String;

    #@27
    move-result-object v4

    #@28
    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2b
    goto :goto_0

    #@2c
    .line 517
    .end local v0    # "ext":Lsun/security/x509/Extension;
    :cond_1
    return-object v3
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
    .line 373
    iget-object v3, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    #@3
    if-nez v3, :cond_0

    #@5
    .line 374
    return-object v4

    #@6
    .line 376
    :cond_0
    new-instance v2, Ljava/util/TreeSet;

    #@8
    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    #@b
    .line 377
    .local v2, "extSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

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
    .line 378
    .local v0, "ex":Lsun/security/x509/Extension;
    invoke-virtual {v0}, Lsun/security/x509/Extension;->isCritical()Z

    #@24
    move-result v3

    #@25
    if-nez v3, :cond_1

    #@27
    .line 379
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
    .line 382
    .end local v0    # "ex":Lsun/security/x509/Extension;
    :cond_2
    return-object v2
.end method

.method public getReasonCode()Ljava/lang/Integer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 280
    sget-object v2, Lsun/security/x509/PKIXExtensions;->ReasonCode_Id:Lsun/security/util/ObjectIdentifier;

    #@3
    invoke-virtual {p0, v2}, Lsun/security/x509/X509CRLEntryImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    #@6
    move-result-object v0

    #@7
    .line 281
    .local v0, "obj":Ljava/lang/Object;
    if-nez v0, :cond_0

    #@9
    .line 282
    return-object v3

    #@a
    :cond_0
    move-object v1, v0

    #@b
    .line 283
    check-cast v1, Lsun/security/x509/CRLReasonCodeExtension;

    #@d
    .line 284
    .local v1, "reasonCode":Lsun/security/x509/CRLReasonCodeExtension;
    const-string/jumbo v2, "reason"

    #@10
    invoke-virtual {v1, v2}, Lsun/security/x509/CRLReasonCodeExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    check-cast v2, Ljava/lang/Integer;

    #@16
    return-object v2
.end method

.method public getRevocationDate()Ljava/util/Date;
    .locals 4

    #@0
    .prologue
    .line 234
    new-instance v0, Ljava/util/Date;

    #@2
    iget-object v1, p0, Lsun/security/x509/X509CRLEntryImpl;->revocationDate:Ljava/util/Date;

    #@4
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    #@7
    move-result-wide v2

    #@8
    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    #@b
    return-object v0
.end method

.method public getRevocationReason()Ljava/security/cert/CRLReason;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 244
    sget-object v2, Lsun/security/x509/PKIXExtensions;->ReasonCode_Id:Lsun/security/util/ObjectIdentifier;

    #@3
    invoke-virtual {p0, v2}, Lsun/security/x509/X509CRLEntryImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    #@6
    move-result-object v0

    #@7
    .line 245
    .local v0, "ext":Lsun/security/x509/Extension;
    if-nez v0, :cond_0

    #@9
    .line 246
    return-object v3

    #@a
    :cond_0
    move-object v1, v0

    #@b
    .line 248
    check-cast v1, Lsun/security/x509/CRLReasonCodeExtension;

    #@d
    .line 249
    .local v1, "rcExt":Lsun/security/x509/CRLReasonCodeExtension;
    invoke-virtual {v1}, Lsun/security/x509/CRLReasonCodeExtension;->getReasonCode()Ljava/security/cert/CRLReason;

    #@10
    move-result-object v2

    #@11
    return-object v2
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 224
    iget-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->serialNumber:Lsun/security/x509/SerialNumber;

    #@2
    invoke-virtual {v0}, Lsun/security/x509/SerialNumber;->getNumber()Ljava/math/BigInteger;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public hasExtensions()Z
    .locals 1

    #@0
    .prologue
    .line 150
    iget-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .locals 1

    #@0
    .prologue
    .line 338
    iget-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 339
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 340
    :cond_0
    iget-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    #@8
    invoke-virtual {v0}, Lsun/security/x509/CRLExtensions;->hasUnsupportedCriticalExtension()Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method setCertificateIssuer(Ljavax/security/auth/x500/X500Principal;Ljavax/security/auth/x500/X500Principal;)V
    .locals 1
    .param p1, "crlIssuer"    # Ljavax/security/auth/x500/X500Principal;
    .param p2, "certIssuer"    # Ljavax/security/auth/x500/X500Principal;

    #@0
    .prologue
    .line 210
    invoke-virtual {p1, p2}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 211
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->certIssuer:Ljavax/security/auth/x500/X500Principal;

    #@9
    .line 209
    :goto_0
    return-void

    #@a
    .line 213
    :cond_0
    iput-object p2, p0, Lsun/security/x509/X509CRLEntryImpl;->certIssuer:Ljavax/security/auth/x500/X500Principal;

    #@c
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    #@0
    .prologue
    .line 294
    new-instance v8, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 296
    .local v8, "sb":Ljava/lang/StringBuilder;
    iget-object v9, p0, Lsun/security/x509/X509CRLEntryImpl;->serialNumber:Lsun/security/x509/SerialNumber;

    #@7
    invoke-virtual {v9}, Lsun/security/x509/SerialNumber;->toString()Ljava/lang/String;

    #@a
    move-result-object v9

    #@b
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    .line 297
    const-string/jumbo v9, "  On: "

    #@11
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v9

    #@15
    iget-object v10, p0, Lsun/security/x509/X509CRLEntryImpl;->revocationDate:Ljava/util/Date;

    #@17
    invoke-virtual {v10}, Ljava/util/Date;->toString()Ljava/lang/String;

    #@1a
    move-result-object v10

    #@1b
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    .line 298
    iget-object v9, p0, Lsun/security/x509/X509CRLEntryImpl;->certIssuer:Ljavax/security/auth/x500/X500Principal;

    #@20
    if-eqz v9, :cond_0

    #@22
    .line 299
    const-string/jumbo v9, "\n    Certificate issuer: "

    #@25
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v9

    #@29
    iget-object v10, p0, Lsun/security/x509/X509CRLEntryImpl;->certIssuer:Ljavax/security/auth/x500/X500Principal;

    #@2b
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    .line 301
    :cond_0
    iget-object v9, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    #@30
    if-eqz v9, :cond_3

    #@32
    .line 302
    iget-object v9, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    #@34
    invoke-virtual {v9}, Lsun/security/x509/CRLExtensions;->getAllExtensions()Ljava/util/Collection;

    #@37
    move-result-object v0

    #@38
    .line 303
    .local v0, "allEntryExts":Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    #@3b
    move-result-object v6

    #@3c
    .line 305
    .local v6, "objs":[Ljava/lang/Object;
    const-string/jumbo v9, "\n    CRL Entry Extensions: "

    #@3f
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v9

    #@43
    array-length v10, v6

    #@44
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47
    .line 306
    const/4 v5, 0x0

    #@48
    .local v5, "i":I
    :goto_0
    array-length v9, v6

    #@49
    if-ge v5, v9, :cond_3

    #@4b
    .line 307
    const-string/jumbo v9, "\n    ["

    #@4e
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v9

    #@52
    add-int/lit8 v10, v5, 0x1

    #@54
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@57
    move-result-object v9

    #@58
    const-string/jumbo v10, "]: "

    #@5b
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    .line 308
    aget-object v3, v6, v5

    #@60
    check-cast v3, Lsun/security/x509/Extension;

    #@62
    .line 310
    .local v3, "ext":Lsun/security/x509/Extension;
    :try_start_0
    invoke-virtual {v3}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    #@65
    move-result-object v9

    #@66
    invoke-static {v9}, Lsun/security/x509/OIDMap;->getClass(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Class;

    #@69
    move-result-object v9

    #@6a
    if-nez v9, :cond_2

    #@6c
    .line 311
    invoke-virtual {v3}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    #@6f
    move-result-object v9

    #@70
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    .line 312
    invoke-virtual {v3}, Lsun/security/x509/Extension;->getExtensionValue()[B

    #@76
    move-result-object v4

    #@77
    .line 313
    .local v4, "extValue":[B
    if-eqz v4, :cond_1

    #@79
    .line 314
    new-instance v7, Lsun/security/util/DerOutputStream;

    #@7b
    invoke-direct {v7}, Lsun/security/util/DerOutputStream;-><init>()V

    #@7e
    .line 315
    .local v7, "out":Lsun/security/util/DerOutputStream;
    invoke-virtual {v7, v4}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    #@81
    .line 316
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@84
    move-result-object v4

    #@85
    .line 317
    new-instance v2, Lsun/misc/HexDumpEncoder;

    #@87
    invoke-direct {v2}, Lsun/misc/HexDumpEncoder;-><init>()V

    #@8a
    .line 318
    .local v2, "enc":Lsun/misc/HexDumpEncoder;
    const-string/jumbo v9, "Extension unknown: DER encoded OCTET string =\n"

    #@8d
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v9

    #@91
    .line 320
    invoke-virtual {v2, v4}, Lsun/misc/CharacterEncoder;->encodeBuffer([B)Ljava/lang/String;

    #@94
    move-result-object v10

    #@95
    .line 318
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v9

    #@99
    .line 320
    const-string/jumbo v10, "\n"

    #@9c
    .line 318
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    .line 306
    .end local v2    # "enc":Lsun/misc/HexDumpEncoder;
    .end local v4    # "extValue":[B
    .end local v7    # "out":Lsun/security/util/DerOutputStream;
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    #@a1
    goto :goto_0

    #@a2
    .line 323
    :cond_2
    invoke-virtual {v3}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    #@a5
    move-result-object v9

    #@a6
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@a9
    goto :goto_1

    #@aa
    .line 324
    :catch_0
    move-exception v1

    #@ab
    .line 325
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v9, ", Error parsing this extension"

    #@ae
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    goto :goto_1

    #@b2
    .line 329
    .end local v0    # "allEntryExts":Ljava/util/Collection;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "ext":Lsun/security/x509/Extension;
    .end local v5    # "i":I
    .end local v6    # "objs":[Ljava/lang/Object;
    :cond_3
    const-string/jumbo v9, "\n"

    #@b5
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    .line 330
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bb
    move-result-object v9

    #@bc
    return-object v9
.end method

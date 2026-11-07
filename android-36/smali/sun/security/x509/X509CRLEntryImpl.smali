.class public Lsun/security/x509/X509CRLEntryImpl;
.super Ljava/security/cert/X509CRLEntry;
.source "X509CRLEntryImpl.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/security/cert/X509CRLEntry;",
        "Ljava/lang/Comparable<",
        "Lsun/security/x509/X509CRLEntryImpl;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist YR_2050:J = 0x24bd0146400L

.field private static final blacklist isExplicit:Z = false


# instance fields
.field private blacklist certIssuer:Ljavax/security/auth/x500/X500Principal;

.field private blacklist extensions:Lsun/security/x509/CRLExtensions;

.field private blacklist revocationDate:Ljava/util/Date;

.field private blacklist revokedCert:[B

.field private blacklist serialNumber:Lsun/security/x509/SerialNumber;


# direct methods
.method public constructor blacklist <init>(Ljava/math/BigInteger;Ljava/util/Date;)V
    .registers 4
    .param p1, "num"    # Ljava/math/BigInteger;
    .param p2, "date"    # Ljava/util/Date;

    .line 89
    invoke-direct {p0}, Ljava/security/cert/X509CRLEntry;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->serialNumber:Lsun/security/x509/SerialNumber;

    .line 74
    iput-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->revocationDate:Ljava/util/Date;

    .line 75
    iput-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    .line 76
    iput-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->revokedCert:[B

    .line 90
    new-instance v0, Lsun/security/x509/SerialNumber;

    invoke-direct {v0, p1}, Lsun/security/x509/SerialNumber;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->serialNumber:Lsun/security/x509/SerialNumber;

    .line 91
    iput-object p2, p0, Lsun/security/x509/X509CRLEntryImpl;->revocationDate:Ljava/util/Date;

    .line 92
    return-void
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;Ljava/util/Date;Lsun/security/x509/CRLExtensions;)V
    .registers 5
    .param p1, "num"    # Ljava/math/BigInteger;
    .param p2, "date"    # Ljava/util/Date;
    .param p3, "crlEntryExts"    # Lsun/security/x509/CRLExtensions;

    .line 104
    invoke-direct {p0}, Ljava/security/cert/X509CRLEntry;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->serialNumber:Lsun/security/x509/SerialNumber;

    .line 74
    iput-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->revocationDate:Ljava/util/Date;

    .line 75
    iput-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    .line 76
    iput-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->revokedCert:[B

    .line 105
    new-instance v0, Lsun/security/x509/SerialNumber;

    invoke-direct {v0, p1}, Lsun/security/x509/SerialNumber;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->serialNumber:Lsun/security/x509/SerialNumber;

    .line 106
    iput-object p2, p0, Lsun/security/x509/X509CRLEntryImpl;->revocationDate:Ljava/util/Date;

    .line 107
    iput-object p3, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    .line 108
    return-void
.end method

.method public constructor blacklist <init>(Lsun/security/util/DerValue;)V
    .registers 6
    .param p1, "derValue"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 131
    invoke-direct {p0}, Ljava/security/cert/X509CRLEntry;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->serialNumber:Lsun/security/x509/SerialNumber;

    .line 74
    iput-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->revocationDate:Ljava/util/Date;

    .line 75
    iput-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    .line 76
    iput-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->revokedCert:[B

    .line 133
    :try_start_c
    invoke-direct {p0, p1}, Lsun/security/x509/X509CRLEntryImpl;->parse(Lsun/security/util/DerValue;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_11

    .line 137
    nop

    .line 138
    return-void

    .line 134
    :catch_11
    move-exception v1

    .line 135
    .local v1, "e":Ljava/io/IOException;
    iput-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->revokedCert:[B

    .line 136
    new-instance v0, Ljava/security/cert/CRLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parsing error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor blacklist <init>([B)V
    .registers 6
    .param p1, "revokedCert"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 116
    invoke-direct {p0}, Ljava/security/cert/X509CRLEntry;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->serialNumber:Lsun/security/x509/SerialNumber;

    .line 74
    iput-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->revocationDate:Ljava/util/Date;

    .line 75
    iput-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    .line 76
    iput-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->revokedCert:[B

    .line 118
    :try_start_c
    new-instance v1, Lsun/security/util/DerValue;

    invoke-direct {v1, p1}, Lsun/security/util/DerValue;-><init>([B)V

    invoke-direct {p0, v1}, Lsun/security/x509/X509CRLEntryImpl;->parse(Lsun/security/util/DerValue;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_14} :catch_16

    .line 122
    nop

    .line 123
    return-void

    .line 119
    :catch_16
    move-exception v1

    .line 120
    .local v1, "e":Ljava/io/IOException;
    iput-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->revokedCert:[B

    .line 121
    new-instance v0, Ljava/security/cert/CRLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parsing error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist getEncoded0()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->revokedCert:[B

    if-nez v0, :cond_c

    .line 198
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    invoke-virtual {p0, v0}, Lsun/security/x509/X509CRLEntryImpl;->encode(Lsun/security/util/DerOutputStream;)V

    .line 199
    :cond_c
    iget-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->revokedCert:[B

    return-object v0
.end method

.method public static blacklist getRevocationReason(Ljava/security/cert/X509CRLEntry;)Ljava/security/cert/CRLReason;
    .registers 7
    .param p0, "crlEntry"    # Ljava/security/cert/X509CRLEntry;

    .line 256
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "2.5.29.21"

    invoke-virtual {p0, v1}, Ljava/security/cert/X509CRLEntry;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v1

    .line 257
    .local v1, "ext":[B
    if-nez v1, :cond_a

    .line 258
    return-object v0

    .line 260
    :cond_a
    new-instance v2, Lsun/security/util/DerValue;

    invoke-direct {v2, v1}, Lsun/security/util/DerValue;-><init>([B)V

    .line 261
    .local v2, "val":Lsun/security/util/DerValue;
    invoke-virtual {v2}, Lsun/security/util/DerValue;->getOctetString()[B

    move-result-object v3

    .line 263
    .local v3, "data":[B
    new-instance v4, Lsun/security/x509/CRLReasonCodeExtension;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v4, v5, v3}, Lsun/security/x509/CRLReasonCodeExtension;-><init>(Ljava/lang/Boolean;Ljava/lang/Object;)V

    .line 265
    .local v4, "rcExt":Lsun/security/x509/CRLReasonCodeExtension;
    invoke-virtual {v4}, Lsun/security/x509/CRLReasonCodeExtension;->getReasonCode()Ljava/security/cert/CRLReason;

    move-result-object v0
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1e} :catch_1f

    return-object v0

    .line 266
    .end local v1    # "ext":[B
    .end local v2    # "val":Lsun/security/util/DerValue;
    .end local v3    # "data":[B
    .end local v4    # "rcExt":Lsun/security/x509/CRLReasonCodeExtension;
    :catch_1f
    move-exception v1

    .line 267
    .local v1, "ioe":Ljava/io/IOException;
    return-object v0
.end method

.method private blacklist parse(Lsun/security/util/DerValue;)V
    .registers 7
    .param p1, "derVal"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 449
    iget-byte v0, p1, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x30

    if-ne v0, v1, :cond_69

    .line 453
    iget-object v0, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->available()I

    move-result v0

    if-eqz v0, :cond_61

    .line 456
    invoke-virtual {p1}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->revokedCert:[B

    .line 458
    invoke-virtual {p1}, Lsun/security/util/DerValue;->toDerInputStream()Lsun/security/util/DerInputStream;

    move-result-object v0

    .line 459
    .local v0, "in":Lsun/security/util/DerInputStream;
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v1

    .line 460
    .local v1, "val":Lsun/security/util/DerValue;
    new-instance v2, Lsun/security/x509/SerialNumber;

    invoke-direct {v2, v1}, Lsun/security/x509/SerialNumber;-><init>(Lsun/security/util/DerValue;)V

    iput-object v2, p0, Lsun/security/x509/X509CRLEntryImpl;->serialNumber:Lsun/security/x509/SerialNumber;

    .line 463
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->peekByte()I

    move-result v2

    .line 464
    .local v2, "nextByte":I
    int-to-byte v3, v2

    const/16 v4, 0x17

    if-ne v3, v4, :cond_37

    .line 465
    iget-object v3, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getUTCTime()Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lsun/security/x509/X509CRLEntryImpl;->revocationDate:Ljava/util/Date;

    goto :goto_44

    .line 466
    :cond_37
    int-to-byte v3, v2

    const/16 v4, 0x18

    if-ne v3, v4, :cond_59

    .line 467
    iget-object v3, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getGeneralizedTime()Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lsun/security/x509/X509CRLEntryImpl;->revocationDate:Ljava/util/Date;

    .line 471
    :goto_44
    iget-object v3, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->available()I

    move-result v3

    if-nez v3, :cond_4d

    .line 472
    return-void

    .line 475
    :cond_4d
    new-instance v3, Lsun/security/x509/CRLExtensions;

    invoke-virtual {p1}, Lsun/security/util/DerValue;->toDerInputStream()Lsun/security/util/DerInputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Lsun/security/x509/CRLExtensions;-><init>(Lsun/security/util/DerInputStream;)V

    iput-object v3, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    .line 476
    return-void

    .line 469
    :cond_59
    new-instance v3, Ljava/security/cert/CRLException;

    const-string v4, "Invalid encoding for revocation date"

    invoke-direct {v3, v4}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 454
    .end local v0    # "in":Lsun/security/util/DerInputStream;
    .end local v1    # "val":Lsun/security/util/DerValue;
    .end local v2    # "nextByte":I
    :cond_61
    new-instance v0, Ljava/security/cert/CRLException;

    const-string v1, "No data encoded for RevokedCertificates"

    invoke-direct {v0, v1}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :cond_69
    new-instance v0, Ljava/security/cert/CRLException;

    const-string v1, "Invalid encoded RevokedCertificate, starting sequence tag missing."

    invoke-direct {v0, v1}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist toImpl(Ljava/security/cert/X509CRLEntry;)Lsun/security/x509/X509CRLEntryImpl;
    .registers 3
    .param p0, "entry"    # Ljava/security/cert/X509CRLEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 485
    instance-of v0, p0, Lsun/security/x509/X509CRLEntryImpl;

    if-eqz v0, :cond_8

    .line 486
    move-object v0, p0

    check-cast v0, Lsun/security/x509/X509CRLEntryImpl;

    return-object v0

    .line 488
    :cond_8
    new-instance v0, Lsun/security/x509/X509CRLEntryImpl;

    invoke-virtual {p0}, Ljava/security/cert/X509CRLEntry;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lsun/security/x509/X509CRLEntryImpl;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 70
    check-cast p1, Lsun/security/x509/X509CRLEntryImpl;

    invoke-virtual {p0, p1}, Lsun/security/x509/X509CRLEntryImpl;->compareTo(Lsun/security/x509/X509CRLEntryImpl;)I

    move-result p1

    return p1
.end method

.method public blacklist compareTo(Lsun/security/x509/X509CRLEntryImpl;)I
    .registers 9
    .param p1, "that"    # Lsun/security/x509/X509CRLEntryImpl;

    .line 520
    invoke-virtual {p0}, Lsun/security/x509/X509CRLEntryImpl;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lsun/security/x509/X509CRLEntryImpl;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    .line 521
    .local v0, "compSerial":I
    if-eqz v0, :cond_f

    .line 522
    return v0

    .line 525
    :cond_f
    :try_start_f
    invoke-direct {p0}, Lsun/security/x509/X509CRLEntryImpl;->getEncoded0()[B

    move-result-object v1

    .line 526
    .local v1, "thisEncoded":[B
    invoke-direct {p1}, Lsun/security/x509/X509CRLEntryImpl;->getEncoded0()[B

    move-result-object v2

    .line 527
    .local v2, "thatEncoded":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_18
    array-length v4, v1

    if-ge v3, v4, :cond_2e

    array-length v4, v2

    if-ge v3, v4, :cond_2e

    .line 528
    aget-byte v4, v1, v3

    and-int/lit16 v4, v4, 0xff

    .line 529
    .local v4, "a":I
    aget-byte v5, v2, v3

    and-int/lit16 v5, v5, 0xff

    .line 530
    .local v5, "b":I
    if-eq v4, v5, :cond_2b

    sub-int v6, v4, v5

    return v6

    .line 527
    .end local v4    # "a":I
    .end local v5    # "b":I
    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 532
    .end local v3    # "i":I
    :cond_2e
    array-length v3, v1

    array-length v4, v2
    :try_end_30
    .catch Ljava/security/cert/CRLException; {:try_start_f .. :try_end_30} :catch_32

    sub-int/2addr v3, v4

    return v3

    .line 533
    .end local v1    # "thisEncoded":[B
    .end local v2    # "thatEncoded":[B
    :catch_32
    move-exception v1

    .line 534
    .local v1, "ce":Ljava/security/cert/CRLException;
    const/4 v2, -0x1

    return v2
.end method

.method public blacklist encode(Lsun/security/util/DerOutputStream;)V
    .registers 7
    .param p1, "outStrm"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 160
    :try_start_0
    iget-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->revokedCert:[B

    if-nez v0, :cond_42

    .line 161
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 163
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/X509CRLEntryImpl;->serialNumber:Lsun/security/x509/SerialNumber;

    invoke-virtual {v1, v0}, Lsun/security/x509/SerialNumber;->encode(Lsun/security/util/DerOutputStream;)V

    .line 165
    iget-object v1, p0, Lsun/security/x509/X509CRLEntryImpl;->revocationDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide v3, 0x24bd0146400L

    cmp-long v1, v1, v3

    if-gez v1, :cond_23

    .line 166
    iget-object v1, p0, Lsun/security/x509/X509CRLEntryImpl;->revocationDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putUTCTime(Ljava/util/Date;)V

    goto :goto_28

    .line 168
    :cond_23
    iget-object v1, p0, Lsun/security/x509/X509CRLEntryImpl;->revocationDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putGeneralizedTime(Ljava/util/Date;)V

    .line 171
    :goto_28
    iget-object v1, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    if-eqz v1, :cond_32

    .line 172
    iget-object v1, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lsun/security/x509/CRLExtensions;->encode(Ljava/io/OutputStream;Z)V

    .line 174
    :cond_32
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 175
    .local v1, "seq":Lsun/security/util/DerOutputStream;
    const/16 v2, 0x30

    invoke-virtual {v1, v2, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 177
    invoke-virtual {v1}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/X509CRLEntryImpl;->revokedCert:[B

    .line 179
    .end local v0    # "tmp":Lsun/security/util/DerOutputStream;
    .end local v1    # "seq":Lsun/security/util/DerOutputStream;
    :cond_42
    iget-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->revokedCert:[B

    invoke-virtual {p1, v0}, Lsun/security/util/DerOutputStream;->write([B)V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_47} :catch_49

    .line 182
    nop

    .line 183
    return-void

    .line 180
    :catch_49
    move-exception v0

    .line 181
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CRLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encoding error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api getCertificateIssuer()Ljavax/security/auth/x500/X500Principal;
    .registers 2

    .line 204
    iget-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->certIssuer:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method blacklist getCertificateIssuerExtension()Lsun/security/x509/CertificateIssuerExtension;
    .registers 2

    .line 498
    sget-object v0, Lsun/security/x509/PKIXExtensions;->CertificateIssuer_Id:Lsun/security/util/ObjectIdentifier;

    .line 499
    invoke-virtual {p0, v0}, Lsun/security/x509/X509CRLEntryImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    move-result-object v0

    check-cast v0, Lsun/security/x509/CertificateIssuerExtension;

    .line 498
    return-object v0
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

    .line 350
    iget-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    if-nez v0, :cond_6

    .line 351
    const/4 v0, 0x0

    return-object v0

    .line 353
    :cond_6
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 354
    .local v0, "extSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

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

    .line 355
    .local v2, "ex":Lsun/security/x509/Extension;
    invoke-virtual {v2}, Lsun/security/x509/Extension;->isCritical()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 356
    invoke-virtual {v2}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 358
    .end local v2    # "ex":Lsun/security/x509/Extension;
    :cond_32
    goto :goto_15

    .line 359
    :cond_33
    return-object v0
.end method

.method public whitelist test-api getEncoded()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 192
    invoke-direct {p0}, Lsun/security/x509/X509CRLEntryImpl;->getEncoded0()[B

    move-result-object v0

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public greylist getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;
    .registers 4
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;

    .line 438
    iget-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    if-nez v0, :cond_6

    .line 439
    const/4 v0, 0x0

    return-object v0

    .line 443
    :cond_6
    iget-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    invoke-static {p1}, Lsun/security/x509/OIDMap;->getName(Lsun/security/util/ObjectIdentifier;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/x509/CRLExtensions;->get(Ljava/lang/String;)Lsun/security/x509/Extension;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getExtensionValue(Ljava/lang/String;)[B
    .registers 10
    .param p1, "oid"    # Ljava/lang/String;

    .line 396
    iget-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 397
    return-object v1

    .line 399
    :cond_6
    :try_start_6
    new-instance v0, Lsun/security/util/ObjectIdentifier;

    invoke-direct {v0, p1}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lsun/security/x509/OIDMap;->getName(Lsun/security/util/ObjectIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, "extAlias":Ljava/lang/String;
    const/4 v2, 0x0

    .line 402
    .local v2, "crlExt":Lsun/security/x509/Extension;
    if-nez v0, :cond_38

    .line 403
    new-instance v3, Lsun/security/util/ObjectIdentifier;

    invoke-direct {v3, p1}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 404
    .local v3, "findOID":Lsun/security/util/ObjectIdentifier;
    const/4 v4, 0x0

    .line 406
    .local v4, "ex":Lsun/security/x509/Extension;
    iget-object v5, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    invoke-virtual {v5}, Lsun/security/x509/CRLExtensions;->getElements()Ljava/util/Enumeration;

    move-result-object v5

    .line 407
    .local v5, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lsun/security/x509/Extension;>;"
    :cond_1e
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_37

    .line 408
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsun/security/x509/Extension;

    move-object v4, v6

    .line 409
    invoke-virtual {v4}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v6

    .line 410
    .local v6, "inCertOID":Lsun/security/util/ObjectIdentifier;
    invoke-virtual {v6, v3}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 411
    move-object v2, v4

    .line 412
    nop

    .line 415
    .end local v3    # "findOID":Lsun/security/util/ObjectIdentifier;
    .end local v4    # "ex":Lsun/security/x509/Extension;
    .end local v5    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lsun/security/x509/Extension;>;"
    .end local v6    # "inCertOID":Lsun/security/util/ObjectIdentifier;
    :cond_37
    goto :goto_3f

    .line 416
    :cond_38
    iget-object v3, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    invoke-virtual {v3, v0}, Lsun/security/x509/CRLExtensions;->get(Ljava/lang/String;)Lsun/security/x509/Extension;

    move-result-object v3

    move-object v2, v3

    .line 417
    :goto_3f
    if-nez v2, :cond_42

    .line 418
    return-object v1

    .line 419
    :cond_42
    invoke-virtual {v2}, Lsun/security/x509/Extension;->getExtensionValue()[B

    move-result-object v3

    .line 420
    .local v3, "extData":[B
    if-nez v3, :cond_49

    .line 421
    return-object v1

    .line 423
    :cond_49
    new-instance v4, Lsun/security/util/DerOutputStream;

    invoke-direct {v4}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 424
    .local v4, "out":Lsun/security/util/DerOutputStream;
    invoke-virtual {v4, v3}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    .line 425
    invoke-virtual {v4}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_55} :catch_56

    return-object v1

    .line 426
    .end local v0    # "extAlias":Ljava/lang/String;
    .end local v2    # "crlExt":Lsun/security/x509/Extension;
    .end local v3    # "extData":[B
    .end local v4    # "out":Lsun/security/util/DerOutputStream;
    :catch_56
    move-exception v0

    .line 427
    .local v0, "e":Ljava/lang/Exception;
    return-object v1
.end method

.method public blacklist getExtensions()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/security/cert/Extension;",
            ">;"
        }
    .end annotation

    .line 507
    iget-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    if-nez v0, :cond_9

    .line 508
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 510
    :cond_9
    iget-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    invoke-virtual {v0}, Lsun/security/x509/CRLExtensions;->getAllExtensions()Ljava/util/Collection;

    move-result-object v0

    .line 511
    .local v0, "exts":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/x509/Extension;>;"
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 512
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/security/cert/Extension;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/security/x509/Extension;

    .line 513
    .local v3, "ext":Lsun/security/x509/Extension;
    invoke-virtual {v3}, Lsun/security/x509/Extension;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    .end local v3    # "ext":Lsun/security/x509/Extension;
    goto :goto_18

    .line 515
    :cond_2c
    return-object v1
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

    .line 371
    iget-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    if-nez v0, :cond_6

    .line 372
    const/4 v0, 0x0

    return-object v0

    .line 374
    :cond_6
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 375
    .local v0, "extSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

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

    .line 376
    .local v2, "ex":Lsun/security/x509/Extension;
    invoke-virtual {v2}, Lsun/security/x509/Extension;->isCritical()Z

    move-result v3

    if-nez v3, :cond_32

    .line 377
    invoke-virtual {v2}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 379
    .end local v2    # "ex":Lsun/security/x509/Extension;
    :cond_32
    goto :goto_15

    .line 380
    :cond_33
    return-object v0
.end method

.method public blacklist getReasonCode()Ljava/lang/Integer;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    sget-object v0, Lsun/security/x509/PKIXExtensions;->ReasonCode_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {p0, v0}, Lsun/security/x509/X509CRLEntryImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    move-result-object v0

    .line 279
    .local v0, "obj":Ljava/lang/Object;
    if-nez v0, :cond_a

    .line 280
    const/4 v1, 0x0

    return-object v1

    .line 281
    :cond_a
    move-object v1, v0

    check-cast v1, Lsun/security/x509/CRLReasonCodeExtension;

    .line 282
    .local v1, "reasonCode":Lsun/security/x509/CRLReasonCodeExtension;
    const-string v2, "reason"

    invoke-virtual {v1, v2}, Lsun/security/x509/CRLReasonCodeExtension;->get(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method public whitelist test-api getRevocationDate()Ljava/util/Date;
    .registers 4

    .line 232
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lsun/security/x509/X509CRLEntryImpl;->revocationDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public whitelist test-api getRevocationReason()Ljava/security/cert/CRLReason;
    .registers 4

    .line 242
    sget-object v0, Lsun/security/x509/PKIXExtensions;->ReasonCode_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {p0, v0}, Lsun/security/x509/X509CRLEntryImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    move-result-object v0

    .line 243
    .local v0, "ext":Lsun/security/x509/Extension;
    if-nez v0, :cond_a

    .line 244
    const/4 v1, 0x0

    return-object v1

    .line 246
    :cond_a
    move-object v1, v0

    check-cast v1, Lsun/security/x509/CRLReasonCodeExtension;

    .line 247
    .local v1, "rcExt":Lsun/security/x509/CRLReasonCodeExtension;
    invoke-virtual {v1}, Lsun/security/x509/CRLReasonCodeExtension;->getReasonCode()Ljava/security/cert/CRLReason;

    move-result-object v2

    return-object v2
.end method

.method public whitelist test-api getSerialNumber()Ljava/math/BigInteger;
    .registers 2

    .line 222
    iget-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->serialNumber:Lsun/security/x509/SerialNumber;

    invoke-virtual {v0}, Lsun/security/x509/SerialNumber;->getNumber()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hasExtensions()Z
    .registers 2

    .line 148
    iget-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist test-api hasUnsupportedCriticalExtension()Z
    .registers 2

    .line 336
    iget-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    if-nez v0, :cond_6

    .line 337
    const/4 v0, 0x0

    return v0

    .line 338
    :cond_6
    iget-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    invoke-virtual {v0}, Lsun/security/x509/CRLExtensions;->hasUnsupportedCriticalExtension()Z

    move-result v0

    return v0
.end method

.method blacklist setCertificateIssuer(Ljavax/security/auth/x500/X500Principal;Ljavax/security/auth/x500/X500Principal;)V
    .registers 4
    .param p1, "crlIssuer"    # Ljavax/security/auth/x500/X500Principal;
    .param p2, "certIssuer"    # Ljavax/security/auth/x500/X500Principal;

    .line 208
    invoke-virtual {p1, p2}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->certIssuer:Ljavax/security/auth/x500/X500Principal;

    goto :goto_c

    .line 211
    :cond_a
    iput-object p2, p0, Lsun/security/x509/X509CRLEntryImpl;->certIssuer:Ljavax/security/auth/x500/X500Principal;

    .line 213
    :goto_c
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 12

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 294
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lsun/security/x509/X509CRLEntryImpl;->serialNumber:Lsun/security/x509/SerialNumber;

    invoke-virtual {v1}, Lsun/security/x509/SerialNumber;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  On: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/x509/X509CRLEntryImpl;->revocationDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    iget-object v1, p0, Lsun/security/x509/X509CRLEntryImpl;->certIssuer:Ljavax/security/auth/x500/X500Principal;

    if-eqz v1, :cond_46

    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n    Certificate issuer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/x509/X509CRLEntryImpl;->certIssuer:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    :cond_46
    iget-object v1, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    const-string v2, "\n"

    if-eqz v1, :cond_ee

    .line 300
    iget-object v1, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    invoke-virtual {v1}, Lsun/security/x509/CRLExtensions;->getAllExtensions()Ljava/util/Collection;

    move-result-object v1

    .line 301
    .local v1, "allEntryExts":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/x509/Extension;>;"
    const/4 v3, 0x0

    new-array v3, v3, [Lsun/security/x509/Extension;

    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lsun/security/x509/Extension;

    .line 303
    .local v3, "exts":[Lsun/security/x509/Extension;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n    CRL Entry Extensions: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_73
    array-length v5, v3

    if-ge v4, v5, :cond_ee

    .line 305
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n    ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    aget-object v5, v3, v4

    .line 308
    .local v5, "ext":Lsun/security/x509/Extension;
    :try_start_96
    invoke-virtual {v5}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v6

    invoke-static {v6}, Lsun/security/x509/OIDMap;->getClass(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Class;

    move-result-object v6

    if-nez v6, :cond_dd

    .line 309
    invoke-virtual {v5}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    invoke-virtual {v5}, Lsun/security/x509/Extension;->getExtensionValue()[B

    move-result-object v6

    .line 311
    .local v6, "extValue":[B
    if-eqz v6, :cond_dc

    .line 312
    new-instance v7, Lsun/security/util/DerOutputStream;

    invoke-direct {v7}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 313
    .local v7, "out":Lsun/security/util/DerOutputStream;
    invoke-virtual {v7, v6}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    .line 314
    invoke-virtual {v7}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v8

    .line 315
    .end local v6    # "extValue":[B
    .local v8, "extValue":[B
    new-instance v6, Lsun/misc/HexDumpEncoder;

    invoke-direct {v6}, Lsun/misc/HexDumpEncoder;-><init>()V

    .line 316
    .local v6, "enc":Lsun/misc/HexDumpEncoder;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Extension unknown: DER encoded OCTET string =\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 318
    invoke-virtual {v6, v8}, Lsun/misc/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 316
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .end local v6    # "enc":Lsun/misc/HexDumpEncoder;
    .end local v7    # "out":Lsun/security/util/DerOutputStream;
    .end local v8    # "extValue":[B
    :cond_dc
    goto :goto_e4

    .line 321
    :cond_dd
    invoke-virtual {v5}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_e4} :catch_e5

    .line 324
    :goto_e4
    goto :goto_eb

    .line 322
    :catch_e5
    move-exception v6

    .line 323
    .local v6, "e":Ljava/lang/Exception;
    const-string v7, ", Error parsing this extension"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .end local v5    # "ext":Lsun/security/x509/Extension;
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_eb
    add-int/lit8 v4, v4, 0x1

    goto :goto_73

    .line 327
    .end local v1    # "allEntryExts":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/x509/Extension;>;"
    .end local v3    # "exts":[Lsun/security/x509/Extension;
    .end local v4    # "i":I
    :cond_ee
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

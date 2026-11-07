.class public Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;
.super Ljava/lang/Object;
.source "SignedCertificateTimestamp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;,
        Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;,
        Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;
    }
.end annotation


# instance fields
.field private final blacklist extensions:[B

.field private final blacklist logId:[B

.field private final blacklist origin:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

.field private final blacklist signature:Lcom/android/org/conscrypt/ct/DigitallySigned;

.field private final blacklist timestamp:J

.field private final blacklist version:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;[BJ[BLcom/android/org/conscrypt/ct/DigitallySigned;Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;)V
    .registers 8
    .param p1, "version"    # Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;
    .param p2, "logId"    # [B
    .param p3, "timestamp"    # J
    .param p5, "extensions"    # [B
    .param p6, "signature"    # Lcom/android/org/conscrypt/ct/DigitallySigned;
    .param p7, "origin"    # Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;->version:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;

    .line 85
    iput-object p2, p0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;->logId:[B

    .line 86
    iput-wide p3, p0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;->timestamp:J

    .line 87
    iput-object p5, p0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;->extensions:[B

    .line 88
    iput-object p6, p0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;->signature:Lcom/android/org/conscrypt/ct/DigitallySigned;

    .line 89
    iput-object p7, p0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;->origin:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    .line 90
    return-void
.end method

.method public static blacklist decode(Ljava/io/InputStream;Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;)Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;
    .registers 12
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "origin"    # Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/SerializationException;
        }
    .end annotation

    .line 116
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/org/conscrypt/ct/Serialization;->readNumber(Ljava/io/InputStream;I)I

    move-result v0

    .line 117
    .local v0, "version":I
    sget-object v1, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;->V1:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;->value()I

    move-result v1

    if-ne v0, v1, :cond_2b

    .line 121
    new-instance v2, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;

    sget-object v3, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;->V1:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;

    .line 122
    const/16 v1, 0x20

    invoke-static {p0, v1}, Lcom/android/org/conscrypt/ct/Serialization;->readFixedBytes(Ljava/io/InputStream;I)[B

    move-result-object v4

    .line 123
    const/16 v1, 0x8

    invoke-static {p0, v1}, Lcom/android/org/conscrypt/ct/Serialization;->readLong(Ljava/io/InputStream;I)J

    move-result-wide v5

    .line 124
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/android/org/conscrypt/ct/Serialization;->readVariableBytes(Ljava/io/InputStream;I)[B

    move-result-object v7

    .line 125
    invoke-static {p0}, Lcom/android/org/conscrypt/ct/DigitallySigned;->decode(Ljava/io/InputStream;)Lcom/android/org/conscrypt/ct/DigitallySigned;

    move-result-object v8

    move-object v9, p1

    .end local p1    # "origin":Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;
    .local v9, "origin":Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;
    invoke-direct/range {v2 .. v9}, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;-><init>(Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;[BJ[BLcom/android/org/conscrypt/ct/DigitallySigned;Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;)V

    .line 121
    return-object v2

    .line 118
    .end local v9    # "origin":Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;
    .restart local p1    # "origin":Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;
    :cond_2b
    move-object v9, p1

    .end local p1    # "origin":Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;
    .restart local v9    # "origin":Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;
    new-instance p1, Lcom/android/org/conscrypt/ct/SerializationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported SCT version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/android/org/conscrypt/ct/SerializationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static blacklist decode([BLcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;)Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;
    .registers 3
    .param p0, "input"    # [B
    .param p1, "origin"    # Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/SerializationException;
        }
    .end annotation

    .line 133
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0, p1}, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;->decode(Ljava/io/InputStream;Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;)Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist encodeTBS(Ljava/io/OutputStream;Lcom/android/org/conscrypt/ct/CertificateEntry;)V
    .registers 6
    .param p1, "output"    # Ljava/io/OutputStream;
    .param p2, "certEntry"    # Lcom/android/org/conscrypt/ct/CertificateEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/SerializationException;
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;->version:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;->value()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/android/org/conscrypt/ct/Serialization;->writeNumber(Ljava/io/OutputStream;JI)V

    .line 142
    sget-object v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;->CERTIFICATE_TIMESTAMP:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;->value()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1, v0, v1, v2}, Lcom/android/org/conscrypt/ct/Serialization;->writeNumber(Ljava/io/OutputStream;JI)V

    .line 144
    iget-wide v0, p0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;->timestamp:J

    const/16 v2, 0x8

    invoke-static {p1, v0, v1, v2}, Lcom/android/org/conscrypt/ct/Serialization;->writeNumber(Ljava/io/OutputStream;JI)V

    .line 145
    invoke-virtual {p2, p1}, Lcom/android/org/conscrypt/ct/CertificateEntry;->encode(Ljava/io/OutputStream;)V

    .line 146
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;->extensions:[B

    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Lcom/android/org/conscrypt/ct/Serialization;->writeVariableBytes(Ljava/io/OutputStream;[BI)V

    .line 147
    return-void
.end method

.method public blacklist encodeTBS(Lcom/android/org/conscrypt/ct/CertificateEntry;)[B
    .registers 4
    .param p1, "certEntry"    # Lcom/android/org/conscrypt/ct/CertificateEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/SerializationException;
        }
    .end annotation

    .line 154
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 155
    .local v0, "output":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0, v0, p1}, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;->encodeTBS(Ljava/io/OutputStream;Lcom/android/org/conscrypt/ct/CertificateEntry;)V

    .line 156
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public blacklist getExtensions()[B
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;->extensions:[B

    return-object v0
.end method

.method public blacklist getLogID()[B
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;->logId:[B

    return-object v0
.end method

.method public blacklist getOrigin()Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;->origin:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    return-object v0
.end method

.method public blacklist getSignature()Lcom/android/org/conscrypt/ct/DigitallySigned;
    .registers 2

    .line 105
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;->signature:Lcom/android/org/conscrypt/ct/DigitallySigned;

    return-object v0
.end method

.method public blacklist getTimestamp()J
    .registers 3

    .line 99
    iget-wide v0, p0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;->timestamp:J

    return-wide v0
.end method

.method public blacklist getVersion()Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;->version:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;

    return-object v0
.end method

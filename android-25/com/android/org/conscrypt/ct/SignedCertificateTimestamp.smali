.class public Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;
.super Ljava/lang/Object;
.source "SignedCertificateTimestamp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;,
        Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;,
        Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;
    }
.end annotation


# instance fields
.field private final extensions:[B

.field private final logId:[B

.field private final origin:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

.field private final signature:Lcom/android/org/conscrypt/ct/DigitallySigned;

.field private final timestamp:J

.field private final version:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;


# direct methods
.method public constructor <init>(Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;[BJ[BLcom/android/org/conscrypt/ct/DigitallySigned;Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;)V
    .locals 1
    .param p1, "version"    # Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;
    .param p2, "logId"    # [B
    .param p3, "timestamp"    # J
    .param p5, "extensions"    # [B
    .param p6, "signature"    # Lcom/android/org/conscrypt/ct/DigitallySigned;
    .param p7, "origin"    # Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    #@0
    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 56
    iput-object p1, p0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;->version:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;

    #@5
    .line 57
    iput-object p2, p0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;->logId:[B

    #@7
    .line 58
    iput-wide p3, p0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;->timestamp:J

    #@9
    .line 59
    iput-object p5, p0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;->extensions:[B

    #@b
    .line 60
    iput-object p6, p0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;->signature:Lcom/android/org/conscrypt/ct/DigitallySigned;

    #@d
    .line 61
    iput-object p7, p0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;->origin:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    #@f
    .line 55
    return-void
.end method

.method public static decode(Ljava/io/InputStream;Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;)Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;
    .locals 9
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "origin"    # Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/SerializationException;
        }
    .end annotation

    #@0
    .prologue
    .line 88
    const/4 v1, 0x1

    #@1
    invoke-static {p0, v1}, Lcom/android/org/conscrypt/ct/Serialization;->readNumber(Ljava/io/InputStream;I)I

    #@4
    move-result v0

    #@5
    .line 89
    .local v0, "version":I
    sget-object v1, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;->V1:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;

    #@7
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@a
    move-result v1

    #@b
    if-eq v0, v1, :cond_0

    #@d
    .line 90
    new-instance v1, Lcom/android/org/conscrypt/ct/SerializationException;

    #@f
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v3, "Unsupported SCT version "

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-direct {v1, v2}, Lcom/android/org/conscrypt/ct/SerializationException;-><init>(Ljava/lang/String;)V

    #@26
    throw v1

    #@27
    .line 93
    :cond_0
    new-instance v1, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;

    #@29
    .line 94
    sget-object v2, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;->V1:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;

    #@2b
    .line 95
    const/16 v3, 0x20

    #@2d
    invoke-static {p0, v3}, Lcom/android/org/conscrypt/ct/Serialization;->readFixedBytes(Ljava/io/InputStream;I)[B

    #@30
    move-result-object v3

    #@31
    .line 96
    const/16 v4, 0x8

    #@33
    invoke-static {p0, v4}, Lcom/android/org/conscrypt/ct/Serialization;->readLong(Ljava/io/InputStream;I)J

    #@36
    move-result-wide v4

    #@37
    .line 97
    const/4 v6, 0x2

    #@38
    invoke-static {p0, v6}, Lcom/android/org/conscrypt/ct/Serialization;->readVariableBytes(Ljava/io/InputStream;I)[B

    #@3b
    move-result-object v6

    #@3c
    .line 98
    invoke-static {p0}, Lcom/android/org/conscrypt/ct/DigitallySigned;->decode(Ljava/io/InputStream;)Lcom/android/org/conscrypt/ct/DigitallySigned;

    #@3f
    move-result-object v7

    #@40
    move-object v8, p1

    #@41
    .line 93
    invoke-direct/range {v1 .. v8}, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;-><init>(Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;[BJ[BLcom/android/org/conscrypt/ct/DigitallySigned;Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;)V

    #@44
    return-object v1
.end method

.method public static decode([BLcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;)Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;
    .locals 1
    .param p0, "input"    # [B
    .param p1, "origin"    # Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/SerializationException;
        }
    .end annotation

    #@0
    .prologue
    .line 108
    new-instance v0, Ljava/io/ByteArrayInputStream;

    #@2
    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@5
    invoke-static {v0, p1}, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;->decode(Ljava/io/InputStream;Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;)Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method


# virtual methods
.method public encodeTBS(Ljava/io/OutputStream;Lcom/android/org/conscrypt/ct/CertificateEntry;)V
    .locals 3
    .param p1, "output"    # Ljava/io/OutputStream;
    .param p2, "certEntry"    # Lcom/android/org/conscrypt/ct/CertificateEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/SerializationException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 116
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;->version:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;

    #@3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    #@6
    move-result v0

    #@7
    int-to-long v0, v0

    #@8
    invoke-static {p1, v0, v1, v2}, Lcom/android/org/conscrypt/ct/Serialization;->writeNumber(Ljava/io/OutputStream;JI)V

    #@b
    .line 117
    sget-object v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;->CERTIFICATE_TIMESTAMP:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$SignatureType;

    #@d
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    #@10
    move-result v0

    #@11
    int-to-long v0, v0

    #@12
    invoke-static {p1, v0, v1, v2}, Lcom/android/org/conscrypt/ct/Serialization;->writeNumber(Ljava/io/OutputStream;JI)V

    #@15
    .line 119
    iget-wide v0, p0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;->timestamp:J

    #@17
    const/16 v2, 0x8

    #@19
    invoke-static {p1, v0, v1, v2}, Lcom/android/org/conscrypt/ct/Serialization;->writeNumber(Ljava/io/OutputStream;JI)V

    #@1c
    .line 120
    invoke-virtual {p2, p1}, Lcom/android/org/conscrypt/ct/CertificateEntry;->encode(Ljava/io/OutputStream;)V

    #@1f
    .line 121
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;->extensions:[B

    #@21
    const/4 v1, 0x2

    #@22
    invoke-static {p1, v0, v1}, Lcom/android/org/conscrypt/ct/Serialization;->writeVariableBytes(Ljava/io/OutputStream;[BI)V

    #@25
    .line 115
    return-void
.end method

.method public encodeTBS(Lcom/android/org/conscrypt/ct/CertificateEntry;)[B
    .locals 2
    .param p1, "certEntry"    # Lcom/android/org/conscrypt/ct/CertificateEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/SerializationException;
        }
    .end annotation

    #@0
    .prologue
    .line 129
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@2
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@5
    .line 130
    .local v0, "output":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0, v0, p1}, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;->encodeTBS(Ljava/io/OutputStream;Lcom/android/org/conscrypt/ct/CertificateEntry;)V

    #@8
    .line 131
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@b
    move-result-object v1

    #@c
    return-object v1
.end method

.method public getExtensions()[B
    .locals 1

    #@0
    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;->extensions:[B

    #@2
    return-object v0
.end method

.method public getLogID()[B
    .locals 1

    #@0
    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;->logId:[B

    #@2
    return-object v0
.end method

.method public getOrigin()Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;
    .locals 1

    #@0
    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;->origin:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    #@2
    return-object v0
.end method

.method public getSignature()Lcom/android/org/conscrypt/ct/DigitallySigned;
    .locals 1

    #@0
    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;->signature:Lcom/android/org/conscrypt/ct/DigitallySigned;

    #@2
    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    #@0
    .prologue
    .line 71
    iget-wide v0, p0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;->timestamp:J

    #@2
    return-wide v0
.end method

.method public getVersion()Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;
    .locals 1

    #@0
    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;->version:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Version;

    #@2
    return-object v0
.end method

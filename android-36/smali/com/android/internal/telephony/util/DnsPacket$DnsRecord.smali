.class public Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;
.super Ljava/lang/Object;
.source "DnsPacket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/util/DnsPacket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DnsRecord"
.end annotation


# static fields
.field public static final blacklist MAXNAMESIZE:I = 0xff

.field public static final blacklist NAME_COMPRESSION:I = 0xc0

.field public static final blacklist NAME_NORMAL:I


# instance fields
.field public final blacklist dName:Ljava/lang/String;

.field private final blacklist mRdata:[B

.field public final blacklist nsClass:I

.field public final blacklist nsType:I

.field public final blacklist rType:I

.field public final blacklist ttl:J


# direct methods
.method private constructor blacklist <init>(ILjava/lang/String;IIJLjava/net/InetAddress;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 415
    iput p1, p0, Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;->rType:I

    .line 416
    invoke-static {p2}, Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;->requireHostName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;->dName:Ljava/lang/String;

    .line 417
    iput p3, p0, Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;->nsType:I

    .line 418
    iput p4, p0, Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;->nsClass:I

    if-ltz p1, :cond_27

    const/4 p2, 0x4

    if-ge p1, p2, :cond_27

    if-eqz p1, :cond_27

    const/4 p1, 0x5

    if-ne p3, p1, :cond_1e

    .line 422
    invoke-static {p8}, Lcom/android/internal/telephony/util/DnsPacketUtils$DnsRecordParser;->domainNameToLabels(Ljava/lang/String;)[B

    move-result-object p1

    goto :goto_22

    :cond_1e
    invoke-virtual {p7}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p1

    :goto_22
    iput-object p1, p0, Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;->mRdata:[B

    .line 423
    iput-wide p5, p0, Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;->ttl:J

    return-void

    .line 420
    :cond_27
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unexpected record type: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected constructor blacklist <init>(ILjava/nio/ByteBuffer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;,
            Lcom/android/internal/telephony/util/DnsPacket$ParseException;
        }
    .end annotation

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 289
    iput p1, p0, Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;->rType:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 290
    invoke-static {p2, v0, v1}, Lcom/android/internal/telephony/util/DnsPacketUtils$DnsRecordParser;->parseName(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;->dName:Ljava/lang/String;

    .line 292
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xff

    if-gt v1, v2, :cond_50

    .line 296
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;->nsType:I

    .line 297
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;->nsClass:I

    if-eqz p1, :cond_48

    .line 300
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;->ttl:J

    .line 301
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result p1

    .line 302
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;->mRdata:[B

    .line 303
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-void

    :cond_48
    const-wide/16 p1, 0x0

    .line 305
    iput-wide p1, p0, Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;->ttl:J

    const/4 p1, 0x0

    .line 306
    iput-object p1, p0, Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;->mRdata:[B

    return-void

    .line 293
    :cond_50
    new-instance p0, Lcom/android/internal/telephony/util/DnsPacket$ParseException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Parse name fail, name size is too long: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .registers 5

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 398
    iput v0, p0, Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;->rType:I

    .line 399
    invoke-static {p1}, Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;->requireHostName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;->dName:Ljava/lang/String;

    .line 400
    iput p2, p0, Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;->nsType:I

    .line 401
    iput p3, p0, Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;->nsClass:I

    const/4 p1, 0x0

    .line 402
    iput-object p1, p0, Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;->mRdata:[B

    const-wide/16 p1, 0x0

    .line 403
    iput-wide p1, p0, Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;->ttl:J

    return-void
.end method

.method public static blacklist makeAOrAAAARecord(ILjava/lang/String;IJLjava/net/InetAddress;)Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 354
    invoke-virtual {p5}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_9
    move v4, v0

    goto :goto_e

    :cond_b
    const/16 v0, 0x1c

    goto :goto_9

    .line 355
    :goto_e
    new-instance v1, Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;

    const/4 v9, 0x0

    move v2, p0

    move-object v3, p1

    move v5, p2

    move-wide v6, p3

    move-object v8, p5

    invoke-direct/range {v1 .. v9}, Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;-><init>(ILjava/lang/String;IIJLjava/net/InetAddress;Ljava/lang/String;)V

    return-object v1
.end method

.method public static blacklist makeCNameRecord(ILjava/lang/String;IJLjava/lang/String;)Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 375
    new-instance v0, Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;

    const/4 v3, 0x5

    const/4 v7, 0x0

    move v1, p0

    move-object v2, p1

    move v4, p2

    move-wide v5, p3

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;-><init>(ILjava/lang/String;IIJLjava/net/InetAddress;Ljava/lang/String;)V

    return-object v0
.end method

.method public static blacklist makeQuestion(Ljava/lang/String;II)Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;
    .registers 4

    .line 383
    new-instance v0, Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method

.method public static blacklist parse(ILjava/nio/ByteBuffer;)Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;,
            Lcom/android/internal/telephony/util/DnsPacket$ParseException;
        }
    .end annotation

    .line 319
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 320
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 322
    invoke-static {p1, v1, v2}, Lcom/android/internal/telephony/util/DnsPacketUtils$DnsRecordParser;->parseName(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    .line 325
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v1

    .line 326
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v0, 0x40

    if-eq v1, v0, :cond_21

    .line 333
    new-instance v0, Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;-><init>(ILjava/nio/ByteBuffer;)V

    return-object v0

    .line 331
    :cond_21
    new-instance v0, Lcom/android/internal/telephony/util/DnsSvcbRecord;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/util/DnsSvcbRecord;-><init>(ILjava/nio/ByteBuffer;)V

    return-object v0
.end method

.method private static blacklist requireHostName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 387
    invoke-static {p0}, Lcom/android/internal/telephony/util/DnsPacketUtils$DnsRecordParser;->isHostName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    .line 388
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected domain name but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 459
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_10

    return v3

    .line 460
    :cond_10
    check-cast p1, Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;

    .line 461
    iget v1, p0, Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;->rType:I

    iget v2, p1, Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;->rType:I

    if-ne v1, v2, :cond_41

    iget v1, p0, Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;->nsType:I

    iget v2, p1, Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;->nsType:I

    if-ne v1, v2, :cond_41

    iget v1, p0, Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;->nsClass:I

    iget v2, p1, Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;->nsClass:I

    if-ne v1, v2, :cond_41

    iget-wide v1, p0, Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;->ttl:J

    iget-wide v4, p1, Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;->ttl:J

    cmp-long v1, v1, v4

    if-nez v1, :cond_41

    iget-object v1, p0, Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;->dName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;->dName:Ljava/lang/String;

    .line 465
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_41

    iget-object p0, p0, Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;->mRdata:[B

    iget-object p1, p1, Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;->mRdata:[B

    .line 466
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_41

    return v0

    :cond_41
    return v3
.end method

.method public blacklist getBytes()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 439
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 440
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 441
    iget-object v2, p0, Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;->dName:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/telephony/util/DnsPacketUtils$DnsRecordParser;->domainNameToLabels(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 442
    iget v2, p0, Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;->nsType:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 443
    iget v2, p0, Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;->nsClass:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 444
    iget v2, p0, Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;->rType:I

    if-eqz v2, :cond_39

    .line 445
    iget-wide v2, p0, Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;->ttl:J

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 446
    iget-object v2, p0, Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;->mRdata:[B

    if-nez v2, :cond_30

    const/4 p0, 0x0

    .line 447
    invoke-virtual {v1, p0}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_39

    .line 449
    :cond_30
    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 450
    iget-object p0, p0, Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;->mRdata:[B

    invoke-virtual {v1, p0}, Ljava/io/DataOutputStream;->write([B)V

    .line 453
    :cond_39
    :goto_39
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public blacklist getRR()[B
    .registers 1

    .line 431
    iget-object p0, p0, Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;->mRdata:[B

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 471
    iget-object v0, p0, Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;->dName:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;->ttl:J

    long-to-int v3, v1

    mul-int/lit8 v3, v3, 0x25

    add-int/2addr v0, v3

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    mul-int/lit8 v1, v1, 0x29

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;->nsType:I

    mul-int/lit8 v1, v1, 0x2b

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;->nsClass:I

    mul-int/lit8 v1, v1, 0x2f

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;->rType:I

    mul-int/lit8 v1, v1, 0x35

    add-int/2addr v0, v1

    iget-object p0, p0, Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;->mRdata:[B

    .line 477
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DnsRecord{rType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;->rType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;->dName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", nsType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;->nsType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", nsClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;->nsClass:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ttl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;->ttl:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mRdata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;->mRdata:[B

    .line 488
    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

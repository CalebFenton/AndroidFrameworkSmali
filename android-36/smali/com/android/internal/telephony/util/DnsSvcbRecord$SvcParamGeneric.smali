.class Lcom/android/internal/telephony/util/DnsSvcbRecord$SvcParamGeneric;
.super Lcom/android/internal/telephony/util/DnsSvcbRecord$SvcParam;
.source "DnsSvcbRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/util/DnsSvcbRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SvcParamGeneric"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/util/DnsSvcbRecord$SvcParam<",
        "[B>;"
    }
.end annotation


# instance fields
.field private final blacklist mValue:[B


# direct methods
.method constructor blacklist <init>(ILjava/nio/ByteBuffer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;,
            Lcom/android/internal/telephony/util/DnsPacket$ParseException;
        }
    .end annotation

    .line 426
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/util/DnsSvcbRecord$SvcParam;-><init>(I)V

    .line 428
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result p1

    .line 429
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/android/internal/telephony/util/DnsSvcbRecord$SvcParamGeneric;->mValue:[B

    .line 430
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 442
    invoke-virtual {p0}, Lcom/android/internal/telephony/util/DnsSvcbRecord$SvcParam;->getKey()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/util/DnsSvcbRecord;->-$$Nest$smtoKeyName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    iget-object v1, p0, Lcom/android/internal/telephony/util/DnsSvcbRecord$SvcParamGeneric;->mValue:[B

    if-eqz v1, :cond_25

    array-length v1, v1

    if-lez v1, :cond_25

    .line 444
    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    iget-object p0, p0, Lcom/android/internal/telephony/util/DnsSvcbRecord$SvcParamGeneric;->mValue:[B

    invoke-static {p0}, Lcom/android/internal/telephony/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    :cond_25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.class Lcom/android/internal/telephony/util/DnsSvcbRecord$SvcParamPort;
.super Lcom/android/internal/telephony/util/DnsSvcbRecord$SvcParam;
.source "DnsSvcbRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/util/DnsSvcbRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SvcParamPort"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/util/DnsSvcbRecord$SvcParam<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist mValue:I


# direct methods
.method constructor blacklist <init>(Ljava/nio/ByteBuffer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;,
            Lcom/android/internal/telephony/util/DnsPacket$ParseException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 329
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/util/DnsSvcbRecord$SvcParam;-><init>(I)V

    .line 331
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    .line 335
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/util/DnsSvcbRecord$SvcParamPort;->mValue:I

    return-void

    .line 333
    :cond_16
    new-instance p0, Lcom/android/internal/telephony/util/DnsPacket$ParseException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key port len is not 2 but "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method blacklist getValue()Ljava/lang/Integer;
    .registers 1

    .line 340
    iget p0, p0, Lcom/android/internal/telephony/util/DnsSvcbRecord$SvcParamPort;->mValue:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/util/DnsSvcbRecord$SvcParam;->getKey()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/util/DnsSvcbRecord;->-$$Nest$smtoKeyName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/util/DnsSvcbRecord$SvcParamPort;->mValue:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

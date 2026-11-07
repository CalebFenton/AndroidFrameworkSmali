.class Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord$SvcParamGeneric;
.super Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord$SvcParam;
.source "DnsSvcbRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SvcParamGeneric"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord$SvcParam<",
        "[B>;"
    }
.end annotation


# instance fields
.field private final blacklist mValue:[B


# direct methods
.method constructor blacklist <init>(ILjava/nio/ByteBuffer;)V
    .registers 5
    .param p1, "key"    # I
    .param p2, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;,
            Landroid/net/connectivity/com/android/net/module/util/DnsPacket$ParseException;
        }
    .end annotation

    .line 426
    invoke-direct {p0, p1}, Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord$SvcParam;-><init>(I)V

    .line 428
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v0

    .line 429
    .local v0, "len":I
    new-array v1, v0, [B

    iput-object v1, p0, Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord$SvcParamGeneric;->mValue:[B

    .line 430
    iget-object v1, p0, Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord$SvcParamGeneric;->mValue:[B

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 431
    return-void
.end method


# virtual methods
.method bridge synthetic blacklist getValue()Ljava/lang/Object;
    .registers 2

    .line 421
    invoke-virtual {p0}, Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord$SvcParamGeneric;->getValue()[B

    move-result-object v0

    return-object v0
.end method

.method blacklist getValue()[B
    .registers 2

    .line 436
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 442
    .local v0, "out":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord$SvcParamGeneric;->getKey()I

    move-result v1

    invoke-static {v1}, Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord;->-$$Nest$smtoKeyName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    iget-object v1, p0, Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord$SvcParamGeneric;->mValue:[B

    if-eqz v1, :cond_27

    iget-object v1, p0, Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord$SvcParamGeneric;->mValue:[B

    array-length v1, v1

    if-lez v1, :cond_27

    .line 444
    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    iget-object v1, p0, Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord$SvcParamGeneric;->mValue:[B

    invoke-static {v1}, Landroid/net/connectivity/com/android/net/module/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

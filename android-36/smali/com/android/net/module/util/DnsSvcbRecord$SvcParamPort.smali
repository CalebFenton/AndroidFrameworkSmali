.class Lcom/android/net/module/util/DnsSvcbRecord$SvcParamPort;
.super Lcom/android/net/module/util/DnsSvcbRecord$SvcParam;
.source "DnsSvcbRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/net/module/util/DnsSvcbRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SvcParamPort"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/net/module/util/DnsSvcbRecord$SvcParam<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist mValue:I


# direct methods
.method constructor blacklist <init>(Ljava/nio/ByteBuffer;)V
    .registers 6
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;,
            Lcom/android/net/module/util/DnsPacket$ParseException;
        }
    .end annotation

    .line 329
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/net/module/util/DnsSvcbRecord$SvcParam;-><init>(I)V

    .line 331
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 332
    .local v0, "len":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    .line 335
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v1

    iput v1, p0, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamPort;->mValue:I

    .line 336
    return-void

    .line 333
    :cond_16
    new-instance v1, Lcom/android/net/module/util/DnsPacket$ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key port len is not 2 but "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method blacklist getValue()Ljava/lang/Integer;
    .registers 2

    .line 340
    iget v0, p0, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamPort;->mValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic blacklist getValue()Ljava/lang/Object;
    .registers 2

    .line 325
    invoke-virtual {p0}, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamPort;->getValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamPort;->getKey()I

    move-result v1

    invoke-static {v1}, Lcom/android/net/module/util/DnsSvcbRecord;->-$$Nest$smtoKeyName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamPort;->mValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

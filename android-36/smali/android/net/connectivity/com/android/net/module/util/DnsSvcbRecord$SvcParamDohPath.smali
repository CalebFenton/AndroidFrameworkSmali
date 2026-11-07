.class Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord$SvcParamDohPath;
.super Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord$SvcParam;
.source "DnsSvcbRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SvcParamDohPath"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord$SvcParam<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist mValue:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/nio/ByteBuffer;)V
    .registers 6
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;,
            Landroid/net/connectivity/com/android/net/module/util/DnsPacket$ParseException;
        }
    .end annotation

    .line 401
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord$SvcParam;-><init>(I)V

    .line 403
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v0

    .line 404
    .local v0, "len":I
    new-array v1, v0, [B

    .line 405
    .local v1, "value":[B
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 406
    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v2, p0, Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord$SvcParamDohPath;->mValue:Ljava/lang/String;

    .line 407
    return-void
.end method


# virtual methods
.method bridge synthetic blacklist getValue()Ljava/lang/Object;
    .registers 2

    .line 397
    invoke-virtual {p0}, Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord$SvcParamDohPath;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist getValue()Ljava/lang/String;
    .registers 2

    .line 411
    iget-object v0, p0, Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord$SvcParamDohPath;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord$SvcParamDohPath;->getKey()I

    move-result v1

    invoke-static {v1}, Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord;->-$$Nest$smtoKeyName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/connectivity/com/android/net/module/util/DnsSvcbRecord$SvcParamDohPath;->mValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class Lcom/android/net/module/util/DnsSvcbRecord$SvcParamMandatory;
.super Lcom/android/net/module/util/DnsSvcbRecord$SvcParam;
.source "DnsSvcbRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/net/module/util/DnsSvcbRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SvcParamMandatory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/net/module/util/DnsSvcbRecord$SvcParam<",
        "[S>;"
    }
.end annotation


# instance fields
.field private final blacklist mValue:[S


# direct methods
.method private constructor blacklist <init>(Ljava/nio/ByteBuffer;)V
    .registers 6
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;,
            Lcom/android/net/module/util/DnsPacket$ParseException;
        }
    .end annotation

    .line 252
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/net/module/util/DnsSvcbRecord$SvcParam;-><init>(I)V

    .line 254
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v0

    .line 255
    .local v0, "len":I
    invoke-static {p1, v0}, Lcom/android/net/module/util/DnsSvcbRecord;->sliceAndAdvance(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 256
    .local v1, "svcParamValue":Ljava/nio/ByteBuffer;
    invoke-static {v1}, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamValueUtil;->-$$Nest$smtoShortArray(Ljava/nio/ByteBuffer;)[S

    move-result-object v2

    iput-object v2, p0, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamMandatory;->mValue:[S

    .line 257
    iget-object v2, p0, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamMandatory;->mValue:[S

    array-length v2, v2

    if-eqz v2, :cond_1c

    .line 260
    return-void

    .line 258
    :cond_1c
    new-instance v2, Lcom/android/net/module/util/DnsPacket$ParseException;

    const-string v3, "mandatory value must be non-empty"

    invoke-direct {v2, v3}, Lcom/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method synthetic constructor blacklist <init>(Ljava/nio/ByteBuffer;Lcom/android/net/module/util/DnsSvcbRecord-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamMandatory;-><init>(Ljava/nio/ByteBuffer;)V

    return-void
.end method


# virtual methods
.method bridge synthetic blacklist getValue()Ljava/lang/Object;
    .registers 2

    .line 247
    invoke-virtual {p0}, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamMandatory;->getValue()[S

    move-result-object v0

    return-object v0
.end method

.method blacklist getValue()[S
    .registers 2

    .line 265
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 270
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ","

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 271
    .local v0, "valueJoiner":Ljava/util/StringJoiner;
    iget-object v1, p0, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamMandatory;->mValue:[S

    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_19

    aget-short v4, v1, v3

    .line 272
    .local v4, "key":S
    invoke-static {v4}, Lcom/android/net/module/util/DnsSvcbRecord;->-$$Nest$smtoKeyName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 271
    .end local v4    # "key":S
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 274
    :cond_19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamMandatory;->getKey()I

    move-result v2

    invoke-static {v2}, Lcom/android/net/module/util/DnsSvcbRecord;->-$$Nest$smtoKeyName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

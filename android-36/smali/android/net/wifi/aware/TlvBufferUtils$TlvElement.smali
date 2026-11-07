.class public Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;
.super Ljava/lang/Object;
.source "TlvBufferUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/TlvBufferUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TlvElement"
.end annotation


# instance fields
.field public blacklist byteOrder:Ljava/nio/ByteOrder;

.field public greylist-max-o length:I

.field private blacklist mRefArray:[B

.field public greylist-max-o offset:I

.field public greylist-max-o type:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmRefArray(Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;)[B
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->mRefArray:[B

    return-object p0
.end method

.method private constructor greylist-max-o <init>(II[BI)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "length"    # I
    .param p3, "refArray"    # [B
    .param p4, "offset"    # I

    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 385
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->byteOrder:Ljava/nio/ByteOrder;

    .line 400
    iput p1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->type:I

    .line 401
    iput p2, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->length:I

    .line 402
    iput-object p3, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->mRefArray:[B

    .line 403
    iput p4, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->offset:I

    .line 405
    add-int v0, p4, p2

    array-length v1, p3

    if-gt v0, v1, :cond_15

    .line 408
    return-void

    .line 406
    :cond_15
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0
.end method

.method synthetic constructor blacklist <init>(II[BILandroid/net/wifi/aware/TlvBufferUtils-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;-><init>(II[BI)V

    return-void
.end method


# virtual methods
.method public greylist-max-o getByte()B
    .registers 4

    .line 427
    iget v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->length:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 431
    iget-object v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->mRefArray:[B

    iget v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->offset:I

    aget-byte v0, v0, v1

    return v0

    .line 428
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Accesing a byte from a TLV element of length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->length:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getInt()I
    .registers 4

    .line 457
    iget v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->length:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_10

    .line 461
    iget-object v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->mRefArray:[B

    iget v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->offset:I

    iget-object v2, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->byteOrder:Ljava/nio/ByteOrder;

    invoke-static {v0, v1, v2}, Landroid/net/wifi/aware/TlvBufferUtils;->-$$Nest$smpeekInt([BILjava/nio/ByteOrder;)I

    move-result v0

    return v0

    .line 458
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Accesing an int from a TLV element of length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->length:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getRawData()[B
    .registers 5

    .line 416
    iget-object v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->mRefArray:[B

    iget v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->offset:I

    iget v2, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->offset:I

    iget v3, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->length:I

    add-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getShort()S
    .registers 4

    .line 442
    iget v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->length:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    .line 446
    iget-object v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->mRefArray:[B

    iget v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->offset:I

    iget-object v2, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->byteOrder:Ljava/nio/ByteOrder;

    invoke-static {v0, v1, v2}, Landroid/net/wifi/aware/TlvBufferUtils;->-$$Nest$smpeekShort([BILjava/nio/ByteOrder;)S

    move-result v0

    return v0

    .line 443
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Accesing a short from a TLV element of length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->length:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getString()Ljava/lang/String;
    .registers 5

    .line 470
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->mRefArray:[B

    iget v2, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->offset:I

    iget v3, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->length:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method

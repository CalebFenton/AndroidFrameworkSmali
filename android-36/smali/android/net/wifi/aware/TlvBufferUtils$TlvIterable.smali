.class public Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;
.super Ljava/lang/Object;
.source "TlvBufferUtils.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/TlvBufferUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TlvIterable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;",
        ">;"
    }
.end annotation


# instance fields
.field private greylist-max-o mArray:[B

.field private greylist-max-o mArrayLength:I

.field private blacklist mByteOrder:Ljava/nio/ByteOrder;

.field private greylist-max-o mLengthSize:I

.field private greylist-max-o mTypeSize:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmArray(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)[B
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->mArray:[B

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmArrayLength(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->mArrayLength:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmByteOrder(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)Ljava/nio/ByteOrder;
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->mByteOrder:Ljava/nio/ByteOrder;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLengthSize(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->mLengthSize:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTypeSize(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->mTypeSize:I

    return p0
.end method

.method public constructor greylist-max-o <init>(II[B)V
    .registers 7
    .param p1, "typeSize"    # I
    .param p2, "lengthSize"    # I
    .param p3, "array"    # [B

    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 480
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->mByteOrder:Ljava/nio/ByteOrder;

    .line 497
    if-ltz p1, :cond_1e

    const/4 v0, 0x2

    if-gt p1, v0, :cond_1e

    if-lez p2, :cond_1e

    if-gt p2, v0, :cond_1e

    .line 501
    iput p1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->mTypeSize:I

    .line 502
    iput p2, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->mLengthSize:I

    .line 503
    iput-object p3, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->mArray:[B

    .line 504
    if-nez p3, :cond_1a

    const/4 v0, 0x0

    goto :goto_1b

    :cond_1a
    array-length v0, p3

    :goto_1b
    iput v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->mArrayLength:I

    .line 505
    return-void

    .line 498
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid sizes - typeSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lengthSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;",
            ">;"
        }
    .end annotation

    .line 573
    new-instance v0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;

    invoke-direct {v0, p0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;-><init>(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)V

    return-object v0
.end method

.method public blacklist setByteOrder(Ljava/nio/ByteOrder;)V
    .registers 2
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 511
    iput-object p1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->mByteOrder:Ljava/nio/ByteOrder;

    .line 512
    return-void
.end method

.method public greylist-max-o toList()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 559
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 560
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-virtual {p0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;

    .line 561
    .local v2, "tlv":Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;
    invoke-static {v2}, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->-$$Nest$fgetmRefArray(Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;)[B

    move-result-object v3

    iget v4, v2, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->offset:I

    iget v5, v2, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->offset:I

    iget v6, v2, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->length:I

    add-int/2addr v5, v6

    invoke-static {v3, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 562
    .end local v2    # "tlv":Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;
    goto :goto_9

    .line 564
    :cond_28
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 8

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 523
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    const/4 v1, 0x1

    .line 525
    .local v1, "first":Z
    invoke-virtual {p0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;

    .line 526
    .local v3, "tlv":Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;
    const-string v4, ","

    if-nez v1, :cond_22

    .line 527
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    :cond_22
    const/4 v1, 0x0

    .line 530
    const-string v5, " ("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    iget v5, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->mTypeSize:I

    if-eqz v5, :cond_48

    .line 532
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "T="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    :cond_48
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "L="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->length:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    iget v4, v3, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->length:I

    if-nez v4, :cond_70

    .line 536
    const-string v4, "<null>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9c

    .line 537
    :cond_70
    iget v4, v3, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->length:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_7d

    .line 538
    invoke-virtual {v3}, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->getByte()B

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_9c

    .line 539
    :cond_7d
    iget v4, v3, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->length:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_8a

    .line 540
    invoke-virtual {v3}, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->getShort()S

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_9c

    .line 541
    :cond_8a
    iget v4, v3, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->length:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_97

    .line 542
    invoke-virtual {v3}, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->getInt()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_9c

    .line 544
    :cond_97
    const-string v4, "<bytes>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    :goto_9c
    iget v4, v3, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->length:I

    if-eqz v4, :cond_c0

    .line 547
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " (S=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    .end local v3    # "tlv":Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;
    :cond_c0
    goto/16 :goto_f

    .line 550
    :cond_c2
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

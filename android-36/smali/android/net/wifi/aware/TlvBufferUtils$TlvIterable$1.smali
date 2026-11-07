.class Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;
.super Ljava/lang/Object;
.source "TlvBufferUtils.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mOffset:I

.field final synthetic blacklist this$0:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;


# direct methods
.method constructor blacklist <init>(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)V
    .registers 3
    .param p1, "this$0"    # Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 573
    iput-object p1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->this$0:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 574
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->mOffset:I

    return-void
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 3

    .line 578
    iget v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->mOffset:I

    iget-object v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->this$0:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    invoke-static {v1}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->-$$Nest$fgetmArrayLength(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public blacklist next()Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;
    .registers 11

    .line 583
    invoke-virtual {p0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 587
    const/4 v0, 0x0

    .line 588
    .local v0, "type":I
    iget-object v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->this$0:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    invoke-static {v1}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->-$$Nest$fgetmTypeSize(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1d

    .line 589
    iget-object v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->this$0:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    invoke-static {v1}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->-$$Nest$fgetmArray(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)[B

    move-result-object v1

    iget v4, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->mOffset:I

    aget-byte v0, v1, v4

    move v5, v0

    goto :goto_3a

    .line 590
    :cond_1d
    iget-object v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->this$0:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    invoke-static {v1}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->-$$Nest$fgetmTypeSize(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)I

    move-result v1

    if-ne v1, v2, :cond_39

    .line 591
    iget-object v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->this$0:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    invoke-static {v1}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->-$$Nest$fgetmArray(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)[B

    move-result-object v1

    iget v4, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->mOffset:I

    iget-object v5, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->this$0:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    invoke-static {v5}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->-$$Nest$fgetmByteOrder(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-static {v1, v4, v5}, Landroid/net/wifi/aware/TlvBufferUtils;->-$$Nest$smpeekShort([BILjava/nio/ByteOrder;)S

    move-result v0

    move v5, v0

    goto :goto_3a

    .line 590
    :cond_39
    move v5, v0

    .line 593
    .end local v0    # "type":I
    .local v5, "type":I
    :goto_3a
    iget v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->mOffset:I

    iget-object v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->this$0:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    invoke-static {v1}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->-$$Nest$fgetmTypeSize(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->mOffset:I

    .line 595
    const/4 v0, 0x0

    .line 596
    .local v0, "length":I
    iget-object v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->this$0:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    invoke-static {v1}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->-$$Nest$fgetmLengthSize(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)I

    move-result v1

    if-ne v1, v3, :cond_5a

    .line 597
    iget-object v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->this$0:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    invoke-static {v1}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->-$$Nest$fgetmArray(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)[B

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->mOffset:I

    aget-byte v0, v1, v2

    move v6, v0

    goto :goto_77

    .line 598
    :cond_5a
    iget-object v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->this$0:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    invoke-static {v1}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->-$$Nest$fgetmLengthSize(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)I

    move-result v1

    if-ne v1, v2, :cond_76

    .line 599
    iget-object v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->this$0:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    invoke-static {v1}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->-$$Nest$fgetmArray(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)[B

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->mOffset:I

    iget-object v3, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->this$0:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    invoke-static {v3}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->-$$Nest$fgetmByteOrder(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/net/wifi/aware/TlvBufferUtils;->-$$Nest$smpeekShort([BILjava/nio/ByteOrder;)S

    move-result v0

    move v6, v0

    goto :goto_77

    .line 598
    :cond_76
    move v6, v0

    .line 601
    .end local v0    # "length":I
    .local v6, "length":I
    :goto_77
    iget v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->mOffset:I

    iget-object v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->this$0:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    invoke-static {v1}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->-$$Nest$fgetmLengthSize(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->mOffset:I

    .line 603
    new-instance v4, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;

    iget-object v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->this$0:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    invoke-static {v0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->-$$Nest$fgetmArray(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)[B

    move-result-object v7

    iget v8, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->mOffset:I

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;-><init>(II[BILandroid/net/wifi/aware/TlvBufferUtils-IA;)V

    .line 604
    .local v4, "tlv":Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;
    iget-object v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->this$0:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    invoke-static {v0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->-$$Nest$fgetmByteOrder(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)Ljava/nio/ByteOrder;

    move-result-object v0

    iput-object v0, v4, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->byteOrder:Ljava/nio/ByteOrder;

    .line 605
    iget v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->mOffset:I

    add-int/2addr v0, v6

    iput v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->mOffset:I

    .line 606
    return-object v4

    .line 584
    .end local v4    # "tlv":Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;
    .end local v5    # "type":I
    .end local v6    # "length":I
    :cond_9e
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 573
    invoke-virtual {p0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->next()Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api remove()V
    .registers 2

    .line 611
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.class Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable$1;
.super Ljava/lang/Object;
.source "TlvBufferUtils.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Landroid/net/wifi/nan/TlvBufferUtils$TlvElement;",
        ">;"
    }
.end annotation


# instance fields
.field private mOffset:I

.field final synthetic this$1:Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;


# direct methods
.method constructor <init>(Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;)V
    .locals 1
    .param p1, "this$1"    # Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;

    #@0
    .prologue
    .line 452
    iput-object p1, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable$1;->this$1:Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 453
    const/4 v0, 0x0

    #@6
    iput v0, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable$1;->mOffset:I

    #@8
    .line 452
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    #@0
    .prologue
    .line 457
    iget v0, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable$1;->mOffset:I

    #@2
    iget-object v1, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable$1;->this$1:Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;

    #@4
    invoke-static {v1}, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;->-get1(Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;)I

    #@7
    move-result v1

    #@8
    if-ge v0, v1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method public next()Landroid/net/wifi/nan/TlvBufferUtils$TlvElement;
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x2

    #@1
    const/4 v6, 0x1

    #@2
    .line 462
    const/4 v1, 0x0

    #@3
    .line 463
    .local v1, "type":I
    iget-object v3, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable$1;->this$1:Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;

    #@5
    invoke-static {v3}, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;->-get3(Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;)I

    #@8
    move-result v3

    #@9
    if-ne v3, v6, :cond_2

    #@b
    .line 464
    iget-object v3, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable$1;->this$1:Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;

    #@d
    invoke-static {v3}, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;->-get0(Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;)[B

    #@10
    move-result-object v3

    #@11
    iget v4, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable$1;->mOffset:I

    #@13
    aget-byte v1, v3, v4

    #@15
    .line 468
    :cond_0
    :goto_0
    iget v3, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable$1;->mOffset:I

    #@17
    iget-object v4, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable$1;->this$1:Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;

    #@19
    invoke-static {v4}, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;->-get3(Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;)I

    #@1c
    move-result v4

    #@1d
    add-int/2addr v3, v4

    #@1e
    iput v3, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable$1;->mOffset:I

    #@20
    .line 470
    const/4 v2, 0x0

    #@21
    .line 471
    .local v2, "length":I
    iget-object v3, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable$1;->this$1:Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;

    #@23
    invoke-static {v3}, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;->-get2(Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;)I

    #@26
    move-result v3

    #@27
    if-ne v3, v6, :cond_3

    #@29
    .line 472
    iget-object v3, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable$1;->this$1:Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;

    #@2b
    invoke-static {v3}, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;->-get0(Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;)[B

    #@2e
    move-result-object v3

    #@2f
    iget v4, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable$1;->mOffset:I

    #@31
    aget-byte v2, v3, v4

    #@33
    .line 476
    :cond_1
    :goto_1
    iget v3, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable$1;->mOffset:I

    #@35
    iget-object v4, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable$1;->this$1:Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;

    #@37
    invoke-static {v4}, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;->-get2(Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;)I

    #@3a
    move-result v4

    #@3b
    add-int/2addr v3, v4

    #@3c
    iput v3, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable$1;->mOffset:I

    #@3e
    .line 478
    new-instance v0, Landroid/net/wifi/nan/TlvBufferUtils$TlvElement;

    #@40
    iget-object v3, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable$1;->this$1:Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;

    #@42
    invoke-static {v3}, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;->-get0(Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;)[B

    #@45
    move-result-object v3

    #@46
    iget v4, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable$1;->mOffset:I

    #@48
    const/4 v5, 0x0

    #@49
    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/nan/TlvBufferUtils$TlvElement;-><init>(II[BILandroid/net/wifi/nan/TlvBufferUtils$TlvElement;)V

    #@4c
    .line 479
    .local v0, "tlv":Landroid/net/wifi/nan/TlvBufferUtils$TlvElement;
    iget v3, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable$1;->mOffset:I

    #@4e
    add-int/2addr v3, v2

    #@4f
    iput v3, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable$1;->mOffset:I

    #@51
    .line 480
    return-object v0

    #@52
    .line 465
    .end local v0    # "tlv":Landroid/net/wifi/nan/TlvBufferUtils$TlvElement;
    .end local v2    # "length":I
    :cond_2
    iget-object v3, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable$1;->this$1:Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;

    #@54
    invoke-static {v3}, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;->-get3(Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;)I

    #@57
    move-result v3

    #@58
    if-ne v3, v7, :cond_0

    #@5a
    .line 466
    iget-object v3, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable$1;->this$1:Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;

    #@5c
    invoke-static {v3}, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;->-get0(Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;)[B

    #@5f
    move-result-object v3

    #@60
    iget v4, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable$1;->mOffset:I

    #@62
    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@64
    invoke-static {v3, v4, v5}, Llibcore/io/Memory;->peekShort([BILjava/nio/ByteOrder;)S

    #@67
    move-result v1

    #@68
    goto :goto_0

    #@69
    .line 473
    .restart local v2    # "length":I
    :cond_3
    iget-object v3, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable$1;->this$1:Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;

    #@6b
    invoke-static {v3}, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;->-get2(Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;)I

    #@6e
    move-result v3

    #@6f
    if-ne v3, v7, :cond_1

    #@71
    .line 474
    iget-object v3, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable$1;->this$1:Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;

    #@73
    invoke-static {v3}, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;->-get0(Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;)[B

    #@76
    move-result-object v3

    #@77
    iget v4, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable$1;->mOffset:I

    #@79
    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@7b
    invoke-static {v3, v4, v5}, Llibcore/io/Memory;->peekShort([BILjava/nio/ByteOrder;)S

    #@7e
    move-result v2

    #@7f
    goto :goto_1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 461
    invoke-virtual {p0}, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable$1;->next()Landroid/net/wifi/nan/TlvBufferUtils$TlvElement;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public remove()V
    .locals 1

    #@0
    .prologue
    .line 485
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

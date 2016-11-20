.class public Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;
.super Ljava/lang/Object;
.source "TlvBufferUtils.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nan/TlvBufferUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TlvIterable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Landroid/net/wifi/nan/TlvBufferUtils$TlvElement;",
        ">;"
    }
.end annotation


# instance fields
.field private mArray:[B

.field private mArrayLength:I

.field private mLengthSize:I

.field private mTypeSize:I


# direct methods
.method static synthetic -get0(Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;)[B
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;->mArray:[B

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;->mArrayLength:I

    #@2
    return v0
.end method

.method static synthetic -get2(Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;->mLengthSize:I

    #@2
    return v0
.end method

.method static synthetic -get3(Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;->mTypeSize:I

    #@2
    return v0
.end method

.method public constructor <init>(II[BI)V
    .locals 3
    .param p1, "typeSize"    # I
    .param p2, "lengthSize"    # I
    .param p3, "array"    # [B
    .param p4, "length"    # I

    #@0
    .prologue
    const/4 v0, 0x2

    #@1
    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 395
    if-ltz p1, :cond_0

    #@6
    if-le p1, v0, :cond_1

    #@8
    .line 396
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "Invalid sizes - typeSize="

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    const-string/jumbo v2, ", lengthSize="

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    .line 396
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v0

    #@2d
    .line 395
    :cond_1
    if-lez p2, :cond_0

    #@2f
    if-gt p2, v0, :cond_0

    #@31
    .line 399
    iput p1, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;->mTypeSize:I

    #@33
    .line 400
    iput p2, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;->mLengthSize:I

    #@35
    .line 401
    iput-object p3, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;->mArray:[B

    #@37
    .line 402
    iput p4, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;->mArrayLength:I

    #@39
    .line 394
    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Landroid/net/wifi/nan/TlvBufferUtils$TlvElement;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 452
    new-instance v0, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable$1;

    #@2
    invoke-direct {v0, p0}, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable$1;-><init>(Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;)V

    #@5
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 414
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "["

    #@8
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 415
    const/4 v1, 0x1

    #@c
    .line 416
    .local v1, "first":Z
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v3

    #@10
    .local v3, "tlv$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v4

    #@14
    if-eqz v4, :cond_7

    #@16
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v2

    #@1a
    check-cast v2, Landroid/net/wifi/nan/TlvBufferUtils$TlvElement;

    #@1c
    .line 417
    .local v2, "tlv":Landroid/net/wifi/nan/TlvBufferUtils$TlvElement;
    if-nez v1, :cond_1

    #@1e
    .line 418
    const-string/jumbo v4, ","

    #@21
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    .line 420
    :cond_1
    const/4 v1, 0x0

    #@25
    .line 421
    const-string/jumbo v4, " ("

    #@28
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    .line 422
    iget v4, p0, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;->mTypeSize:I

    #@2d
    if-eqz v4, :cond_2

    #@2f
    .line 423
    const-string/jumbo v4, "T="

    #@32
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v4

    #@36
    iget v5, v2, Landroid/net/wifi/nan/TlvBufferUtils$TlvElement;->mType:I

    #@38
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v4

    #@3c
    const-string/jumbo v5, ","

    #@3f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    .line 425
    :cond_2
    const-string/jumbo v4, "L="

    #@45
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v4

    #@49
    iget v5, v2, Landroid/net/wifi/nan/TlvBufferUtils$TlvElement;->mLength:I

    #@4b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v4

    #@4f
    const-string/jumbo v5, ") "

    #@52
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    .line 426
    iget v4, v2, Landroid/net/wifi/nan/TlvBufferUtils$TlvElement;->mLength:I

    #@57
    if-nez v4, :cond_3

    #@59
    .line 427
    const-string/jumbo v4, "<null>"

    #@5c
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    .line 437
    :goto_1
    iget v4, v2, Landroid/net/wifi/nan/TlvBufferUtils$TlvElement;->mLength:I

    #@61
    if-eqz v4, :cond_0

    #@63
    .line 438
    const-string/jumbo v4, " (S=\'"

    #@66
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v4

    #@6a
    invoke-virtual {v2}, Landroid/net/wifi/nan/TlvBufferUtils$TlvElement;->getString()Ljava/lang/String;

    #@6d
    move-result-object v5

    #@6e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v4

    #@72
    const-string/jumbo v5, "\')"

    #@75
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    goto :goto_0

    #@79
    .line 428
    :cond_3
    iget v4, v2, Landroid/net/wifi/nan/TlvBufferUtils$TlvElement;->mLength:I

    #@7b
    const/4 v5, 0x1

    #@7c
    if-ne v4, v5, :cond_4

    #@7e
    .line 429
    invoke-virtual {v2}, Landroid/net/wifi/nan/TlvBufferUtils$TlvElement;->getByte()B

    #@81
    move-result v4

    #@82
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@85
    goto :goto_1

    #@86
    .line 430
    :cond_4
    iget v4, v2, Landroid/net/wifi/nan/TlvBufferUtils$TlvElement;->mLength:I

    #@88
    const/4 v5, 0x2

    #@89
    if-ne v4, v5, :cond_5

    #@8b
    .line 431
    invoke-virtual {v2}, Landroid/net/wifi/nan/TlvBufferUtils$TlvElement;->getShort()S

    #@8e
    move-result v4

    #@8f
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@92
    goto :goto_1

    #@93
    .line 432
    :cond_5
    iget v4, v2, Landroid/net/wifi/nan/TlvBufferUtils$TlvElement;->mLength:I

    #@95
    const/4 v5, 0x4

    #@96
    if-ne v4, v5, :cond_6

    #@98
    .line 433
    invoke-virtual {v2}, Landroid/net/wifi/nan/TlvBufferUtils$TlvElement;->getInt()I

    #@9b
    move-result v4

    #@9c
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9f
    goto :goto_1

    #@a0
    .line 435
    :cond_6
    const-string/jumbo v4, "<bytes>"

    #@a3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    goto :goto_1

    #@a7
    .line 441
    .end local v2    # "tlv":Landroid/net/wifi/nan/TlvBufferUtils$TlvElement;
    :cond_7
    const-string/jumbo v4, "]"

    #@aa
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    .line 443
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b0
    move-result-object v4

    #@b1
    return-object v4
.end method

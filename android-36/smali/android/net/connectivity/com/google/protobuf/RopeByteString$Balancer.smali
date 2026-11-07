.class Landroid/net/connectivity/com/google/protobuf/RopeByteString$Balancer;
.super Ljava/lang/Object;
.source "RopeByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/com/google/protobuf/RopeByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Balancer"
.end annotation


# instance fields
.field private final blacklist prefixesStack:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/net/connectivity/com/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 628
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 632
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/com/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/connectivity/com/google/protobuf/RopeByteString$1;)V
    .registers 2
    .param p1, "x0"    # Landroid/net/connectivity/com/google/protobuf/RopeByteString$1;

    .line 628
    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/RopeByteString$Balancer;-><init>()V

    return-void
.end method

.method static synthetic blacklist access$100(Landroid/net/connectivity/com/google/protobuf/RopeByteString$Balancer;Landroid/net/connectivity/com/google/protobuf/ByteString;Landroid/net/connectivity/com/google/protobuf/ByteString;)Landroid/net/connectivity/com/google/protobuf/ByteString;
    .registers 4
    .param p0, "x0"    # Landroid/net/connectivity/com/google/protobuf/RopeByteString$Balancer;
    .param p1, "x1"    # Landroid/net/connectivity/com/google/protobuf/ByteString;
    .param p2, "x2"    # Landroid/net/connectivity/com/google/protobuf/ByteString;

    .line 628
    invoke-direct {p0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/RopeByteString$Balancer;->balance(Landroid/net/connectivity/com/google/protobuf/ByteString;Landroid/net/connectivity/com/google/protobuf/ByteString;)Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method private blacklist balance(Landroid/net/connectivity/com/google/protobuf/ByteString;Landroid/net/connectivity/com/google/protobuf/ByteString;)Landroid/net/connectivity/com/google/protobuf/ByteString;
    .registers 7
    .param p1, "left"    # Landroid/net/connectivity/com/google/protobuf/ByteString;
    .param p2, "right"    # Landroid/net/connectivity/com/google/protobuf/ByteString;

    .line 635
    invoke-direct {p0, p1}, Landroid/net/connectivity/com/google/protobuf/RopeByteString$Balancer;->doBalance(Landroid/net/connectivity/com/google/protobuf/ByteString;)V

    .line 636
    invoke-direct {p0, p2}, Landroid/net/connectivity/com/google/protobuf/RopeByteString$Balancer;->doBalance(Landroid/net/connectivity/com/google/protobuf/ByteString;)V

    .line 639
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/ByteString;

    .line 640
    .local v0, "partialString":Landroid/net/connectivity/com/google/protobuf/ByteString;
    :goto_e
    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_26

    .line 641
    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/connectivity/com/google/protobuf/ByteString;

    .line 642
    .local v1, "newLeft":Landroid/net/connectivity/com/google/protobuf/ByteString;
    new-instance v2, Landroid/net/connectivity/com/google/protobuf/RopeByteString;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Landroid/net/connectivity/com/google/protobuf/RopeByteString;-><init>(Landroid/net/connectivity/com/google/protobuf/ByteString;Landroid/net/connectivity/com/google/protobuf/ByteString;Landroid/net/connectivity/com/google/protobuf/RopeByteString$1;)V

    move-object v0, v2

    .line 643
    .end local v1    # "newLeft":Landroid/net/connectivity/com/google/protobuf/ByteString;
    goto :goto_e

    .line 646
    :cond_26
    return-object v0
.end method

.method private blacklist doBalance(Landroid/net/connectivity/com/google/protobuf/ByteString;)V
    .registers 5
    .param p1, "root"    # Landroid/net/connectivity/com/google/protobuf/ByteString;

    .line 654
    invoke-virtual {p1}, Landroid/net/connectivity/com/google/protobuf/ByteString;->isBalanced()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 655
    invoke-direct {p0, p1}, Landroid/net/connectivity/com/google/protobuf/RopeByteString$Balancer;->insert(Landroid/net/connectivity/com/google/protobuf/ByteString;)V

    goto :goto_20

    .line 656
    :cond_a
    instance-of v0, p1, Landroid/net/connectivity/com/google/protobuf/RopeByteString;

    if-eqz v0, :cond_21

    .line 657
    move-object v0, p1

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/RopeByteString;

    .line 658
    .local v0, "rbs":Landroid/net/connectivity/com/google/protobuf/RopeByteString;
    # getter for: Landroid/net/connectivity/com/google/protobuf/RopeByteString;->left:Landroid/net/connectivity/com/google/protobuf/ByteString;
    invoke-static {v0}, Landroid/net/connectivity/com/google/protobuf/RopeByteString;->access$400(Landroid/net/connectivity/com/google/protobuf/RopeByteString;)Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/connectivity/com/google/protobuf/RopeByteString$Balancer;->doBalance(Landroid/net/connectivity/com/google/protobuf/ByteString;)V

    .line 659
    # getter for: Landroid/net/connectivity/com/google/protobuf/RopeByteString;->right:Landroid/net/connectivity/com/google/protobuf/ByteString;
    invoke-static {v0}, Landroid/net/connectivity/com/google/protobuf/RopeByteString;->access$500(Landroid/net/connectivity/com/google/protobuf/RopeByteString;)Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/connectivity/com/google/protobuf/RopeByteString$Balancer;->doBalance(Landroid/net/connectivity/com/google/protobuf/ByteString;)V

    .line 660
    .end local v0    # "rbs":Landroid/net/connectivity/com/google/protobuf/RopeByteString;
    nop

    .line 664
    :goto_20
    return-void

    .line 661
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Has a new type of ByteString been created? Found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 662
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist getDepthBinForLength(I)I
    .registers 4
    .param p1, "length"    # I

    .line 717
    sget-object v0, Landroid/net/connectivity/com/google/protobuf/RopeByteString;->minLengthByDepth:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 718
    .local v0, "depth":I
    if-gez v0, :cond_d

    .line 721
    add-int/lit8 v1, v0, 0x1

    neg-int v1, v1

    .line 722
    .local v1, "insertionPoint":I
    add-int/lit8 v0, v1, -0x1

    .line 725
    .end local v1    # "insertionPoint":I
    :cond_d
    return v0
.end method

.method private blacklist insert(Landroid/net/connectivity/com/google/protobuf/ByteString;)V
    .registers 9
    .param p1, "byteString"    # Landroid/net/connectivity/com/google/protobuf/ByteString;

    .line 679
    invoke-virtual {p1}, Landroid/net/connectivity/com/google/protobuf/ByteString;->size()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/net/connectivity/com/google/protobuf/RopeByteString$Balancer;->getDepthBinForLength(I)I

    move-result v0

    .line 680
    .local v0, "depthBin":I
    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Landroid/net/connectivity/com/google/protobuf/RopeByteString;->minLength(I)I

    move-result v1

    .line 686
    .local v1, "binEnd":I
    iget-object v2, p0, Landroid/net/connectivity/com/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_96

    iget-object v2, p0, Landroid/net/connectivity/com/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/connectivity/com/google/protobuf/ByteString;

    invoke-virtual {v2}, Landroid/net/connectivity/com/google/protobuf/ByteString;->size()I

    move-result v2

    if-lt v2, v1, :cond_26

    goto/16 :goto_96

    .line 689
    :cond_26
    invoke-static {v0}, Landroid/net/connectivity/com/google/protobuf/RopeByteString;->minLength(I)I

    move-result v2

    .line 692
    .local v2, "binStart":I
    iget-object v3, p0, Landroid/net/connectivity/com/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/connectivity/com/google/protobuf/ByteString;

    .line 693
    .local v3, "newTree":Landroid/net/connectivity/com/google/protobuf/ByteString;
    :goto_32
    iget-object v4, p0, Landroid/net/connectivity/com/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_58

    iget-object v4, p0, Landroid/net/connectivity/com/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/connectivity/com/google/protobuf/ByteString;

    invoke-virtual {v4}, Landroid/net/connectivity/com/google/protobuf/ByteString;->size()I

    move-result v4

    if-ge v4, v2, :cond_58

    .line 694
    iget-object v4, p0, Landroid/net/connectivity/com/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/connectivity/com/google/protobuf/ByteString;

    .line 695
    .local v4, "left":Landroid/net/connectivity/com/google/protobuf/ByteString;
    new-instance v6, Landroid/net/connectivity/com/google/protobuf/RopeByteString;

    invoke-direct {v6, v4, v3, v5}, Landroid/net/connectivity/com/google/protobuf/RopeByteString;-><init>(Landroid/net/connectivity/com/google/protobuf/ByteString;Landroid/net/connectivity/com/google/protobuf/ByteString;Landroid/net/connectivity/com/google/protobuf/RopeByteString$1;)V

    move-object v3, v6

    .line 696
    .end local v4    # "left":Landroid/net/connectivity/com/google/protobuf/ByteString;
    goto :goto_32

    .line 699
    :cond_58
    new-instance v4, Landroid/net/connectivity/com/google/protobuf/RopeByteString;

    invoke-direct {v4, v3, p1, v5}, Landroid/net/connectivity/com/google/protobuf/RopeByteString;-><init>(Landroid/net/connectivity/com/google/protobuf/ByteString;Landroid/net/connectivity/com/google/protobuf/ByteString;Landroid/net/connectivity/com/google/protobuf/RopeByteString$1;)V

    .line 702
    .end local v3    # "newTree":Landroid/net/connectivity/com/google/protobuf/ByteString;
    .local v4, "newTree":Landroid/net/connectivity/com/google/protobuf/ByteString;
    :goto_5d
    iget-object v3, p0, Landroid/net/connectivity/com/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_90

    .line 703
    invoke-virtual {v4}, Landroid/net/connectivity/com/google/protobuf/ByteString;->size()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/net/connectivity/com/google/protobuf/RopeByteString$Balancer;->getDepthBinForLength(I)I

    move-result v0

    .line 704
    add-int/lit8 v3, v0, 0x1

    invoke-static {v3}, Landroid/net/connectivity/com/google/protobuf/RopeByteString;->minLength(I)I

    move-result v1

    .line 705
    iget-object v3, p0, Landroid/net/connectivity/com/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/connectivity/com/google/protobuf/ByteString;

    invoke-virtual {v3}, Landroid/net/connectivity/com/google/protobuf/ByteString;->size()I

    move-result v3

    if-ge v3, v1, :cond_90

    .line 706
    iget-object v3, p0, Landroid/net/connectivity/com/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/connectivity/com/google/protobuf/ByteString;

    .line 707
    .local v3, "left":Landroid/net/connectivity/com/google/protobuf/ByteString;
    new-instance v6, Landroid/net/connectivity/com/google/protobuf/RopeByteString;

    invoke-direct {v6, v3, v4, v5}, Landroid/net/connectivity/com/google/protobuf/RopeByteString;-><init>(Landroid/net/connectivity/com/google/protobuf/ByteString;Landroid/net/connectivity/com/google/protobuf/ByteString;Landroid/net/connectivity/com/google/protobuf/RopeByteString$1;)V

    move-object v4, v6

    .line 708
    .end local v3    # "left":Landroid/net/connectivity/com/google/protobuf/ByteString;
    goto :goto_5d

    .line 712
    :cond_90
    iget-object v3, p0, Landroid/net/connectivity/com/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v3, v4}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_9b

    .line 687
    .end local v2    # "binStart":I
    .end local v4    # "newTree":Landroid/net/connectivity/com/google/protobuf/ByteString;
    :cond_96
    :goto_96
    iget-object v2, p0, Landroid/net/connectivity/com/google/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v2, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 714
    :goto_9b
    return-void
.end method

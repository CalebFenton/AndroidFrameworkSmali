.class Lcom/android/framework/protobuf/RopeByteString$Balancer;
.super Ljava/lang/Object;
.source "RopeByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/RopeByteString;
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
            "Lcom/android/framework/protobuf/ByteString;",
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

    iput-object v0, p0, Lcom/android/framework/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/framework/protobuf/RopeByteString$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/framework/protobuf/RopeByteString$1;

    .line 628
    invoke-direct {p0}, Lcom/android/framework/protobuf/RopeByteString$Balancer;-><init>()V

    return-void
.end method

.method static synthetic blacklist access$100(Lcom/android/framework/protobuf/RopeByteString$Balancer;Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;)Lcom/android/framework/protobuf/ByteString;
    .registers 4
    .param p0, "x0"    # Lcom/android/framework/protobuf/RopeByteString$Balancer;
    .param p1, "x1"    # Lcom/android/framework/protobuf/ByteString;
    .param p2, "x2"    # Lcom/android/framework/protobuf/ByteString;

    .line 628
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/RopeByteString$Balancer;->balance(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;)Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method private blacklist balance(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;)Lcom/android/framework/protobuf/ByteString;
    .registers 7
    .param p1, "left"    # Lcom/android/framework/protobuf/ByteString;
    .param p2, "right"    # Lcom/android/framework/protobuf/ByteString;

    .line 635
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/RopeByteString$Balancer;->doBalance(Lcom/android/framework/protobuf/ByteString;)V

    .line 636
    invoke-direct {p0, p2}, Lcom/android/framework/protobuf/RopeByteString$Balancer;->doBalance(Lcom/android/framework/protobuf/ByteString;)V

    .line 639
    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/ByteString;

    .line 640
    .local v0, "partialString":Lcom/android/framework/protobuf/ByteString;
    :goto_e
    iget-object v1, p0, Lcom/android/framework/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_26

    .line 641
    iget-object v1, p0, Lcom/android/framework/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/framework/protobuf/ByteString;

    .line 642
    .local v1, "newLeft":Lcom/android/framework/protobuf/ByteString;
    new-instance v2, Lcom/android/framework/protobuf/RopeByteString;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Lcom/android/framework/protobuf/RopeByteString;-><init>(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/RopeByteString$1;)V

    move-object v0, v2

    .line 643
    .end local v1    # "newLeft":Lcom/android/framework/protobuf/ByteString;
    goto :goto_e

    .line 646
    :cond_26
    return-object v0
.end method

.method private blacklist doBalance(Lcom/android/framework/protobuf/ByteString;)V
    .registers 5
    .param p1, "root"    # Lcom/android/framework/protobuf/ByteString;

    .line 654
    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->isBalanced()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 655
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/RopeByteString$Balancer;->insert(Lcom/android/framework/protobuf/ByteString;)V

    goto :goto_20

    .line 656
    :cond_a
    instance-of v0, p1, Lcom/android/framework/protobuf/RopeByteString;

    if-eqz v0, :cond_21

    .line 657
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/RopeByteString;

    .line 658
    .local v0, "rbs":Lcom/android/framework/protobuf/RopeByteString;
    # getter for: Lcom/android/framework/protobuf/RopeByteString;->left:Lcom/android/framework/protobuf/ByteString;
    invoke-static {v0}, Lcom/android/framework/protobuf/RopeByteString;->access$400(Lcom/android/framework/protobuf/RopeByteString;)Lcom/android/framework/protobuf/ByteString;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/RopeByteString$Balancer;->doBalance(Lcom/android/framework/protobuf/ByteString;)V

    .line 659
    # getter for: Lcom/android/framework/protobuf/RopeByteString;->right:Lcom/android/framework/protobuf/ByteString;
    invoke-static {v0}, Lcom/android/framework/protobuf/RopeByteString;->access$500(Lcom/android/framework/protobuf/RopeByteString;)Lcom/android/framework/protobuf/ByteString;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/RopeByteString$Balancer;->doBalance(Lcom/android/framework/protobuf/ByteString;)V

    .line 660
    .end local v0    # "rbs":Lcom/android/framework/protobuf/RopeByteString;
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
    sget-object v0, Lcom/android/framework/protobuf/RopeByteString;->minLengthByDepth:[I

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

.method private blacklist insert(Lcom/android/framework/protobuf/ByteString;)V
    .registers 9
    .param p1, "byteString"    # Lcom/android/framework/protobuf/ByteString;

    .line 679
    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/RopeByteString$Balancer;->getDepthBinForLength(I)I

    move-result v0

    .line 680
    .local v0, "depthBin":I
    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Lcom/android/framework/protobuf/RopeByteString;->minLength(I)I

    move-result v1

    .line 686
    .local v1, "binEnd":I
    iget-object v2, p0, Lcom/android/framework/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_96

    iget-object v2, p0, Lcom/android/framework/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v2

    if-lt v2, v1, :cond_26

    goto/16 :goto_96

    .line 689
    :cond_26
    invoke-static {v0}, Lcom/android/framework/protobuf/RopeByteString;->minLength(I)I

    move-result v2

    .line 692
    .local v2, "binStart":I
    iget-object v3, p0, Lcom/android/framework/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/framework/protobuf/ByteString;

    .line 693
    .local v3, "newTree":Lcom/android/framework/protobuf/ByteString;
    :goto_32
    iget-object v4, p0, Lcom/android/framework/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_58

    iget-object v4, p0, Lcom/android/framework/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v4}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v4

    if-ge v4, v2, :cond_58

    .line 694
    iget-object v4, p0, Lcom/android/framework/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/framework/protobuf/ByteString;

    .line 695
    .local v4, "left":Lcom/android/framework/protobuf/ByteString;
    new-instance v6, Lcom/android/framework/protobuf/RopeByteString;

    invoke-direct {v6, v4, v3, v5}, Lcom/android/framework/protobuf/RopeByteString;-><init>(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/RopeByteString$1;)V

    move-object v3, v6

    .line 696
    .end local v4    # "left":Lcom/android/framework/protobuf/ByteString;
    goto :goto_32

    .line 699
    :cond_58
    new-instance v4, Lcom/android/framework/protobuf/RopeByteString;

    invoke-direct {v4, v3, p1, v5}, Lcom/android/framework/protobuf/RopeByteString;-><init>(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/RopeByteString$1;)V

    .line 702
    .end local v3    # "newTree":Lcom/android/framework/protobuf/ByteString;
    .local v4, "newTree":Lcom/android/framework/protobuf/ByteString;
    :goto_5d
    iget-object v3, p0, Lcom/android/framework/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_90

    .line 703
    invoke-virtual {v4}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/RopeByteString$Balancer;->getDepthBinForLength(I)I

    move-result v0

    .line 704
    add-int/lit8 v3, v0, 0x1

    invoke-static {v3}, Lcom/android/framework/protobuf/RopeByteString;->minLength(I)I

    move-result v1

    .line 705
    iget-object v3, p0, Lcom/android/framework/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v3

    if-ge v3, v1, :cond_90

    .line 706
    iget-object v3, p0, Lcom/android/framework/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/framework/protobuf/ByteString;

    .line 707
    .local v3, "left":Lcom/android/framework/protobuf/ByteString;
    new-instance v6, Lcom/android/framework/protobuf/RopeByteString;

    invoke-direct {v6, v3, v4, v5}, Lcom/android/framework/protobuf/RopeByteString;-><init>(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/RopeByteString$1;)V

    move-object v4, v6

    .line 708
    .end local v3    # "left":Lcom/android/framework/protobuf/ByteString;
    goto :goto_5d

    .line 712
    :cond_90
    iget-object v3, p0, Lcom/android/framework/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v3, v4}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_9b

    .line 687
    .end local v2    # "binStart":I
    .end local v4    # "newTree":Lcom/android/framework/protobuf/ByteString;
    :cond_96
    :goto_96
    iget-object v2, p0, Lcom/android/framework/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/ArrayDeque;

    invoke-virtual {v2, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 714
    :goto_9b
    return-void
.end method

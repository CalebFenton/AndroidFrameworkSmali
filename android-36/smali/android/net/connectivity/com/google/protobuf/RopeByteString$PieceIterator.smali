.class final Landroid/net/connectivity/com/google/protobuf/RopeByteString$PieceIterator;
.super Ljava/lang/Object;
.source "RopeByteString.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/com/google/protobuf/RopeByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PieceIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Landroid/net/connectivity/com/google/protobuf/ByteString$LeafByteString;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist breadCrumbs:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/net/connectivity/com/google/protobuf/RopeByteString;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist next:Landroid/net/connectivity/com/google/protobuf/ByteString$LeafByteString;


# direct methods
.method private constructor blacklist <init>(Landroid/net/connectivity/com/google/protobuf/ByteString;)V
    .registers 5
    .param p1, "root"    # Landroid/net/connectivity/com/google/protobuf/ByteString;

    .line 740
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 741
    instance-of v0, p1, Landroid/net/connectivity/com/google/protobuf/RopeByteString;

    if-eqz v0, :cond_25

    .line 742
    move-object v0, p1

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/RopeByteString;

    .line 743
    .local v0, "rbs":Landroid/net/connectivity/com/google/protobuf/RopeByteString;
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/RopeByteString;->getTreeDepth()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v1, p0, Landroid/net/connectivity/com/google/protobuf/RopeByteString$PieceIterator;->breadCrumbs:Ljava/util/ArrayDeque;

    .line 744
    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/RopeByteString$PieceIterator;->breadCrumbs:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 745
    # getter for: Landroid/net/connectivity/com/google/protobuf/RopeByteString;->left:Landroid/net/connectivity/com/google/protobuf/ByteString;
    invoke-static {v0}, Landroid/net/connectivity/com/google/protobuf/RopeByteString;->access$400(Landroid/net/connectivity/com/google/protobuf/RopeByteString;)Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/connectivity/com/google/protobuf/RopeByteString$PieceIterator;->getLeafByLeft(Landroid/net/connectivity/com/google/protobuf/ByteString;)Landroid/net/connectivity/com/google/protobuf/ByteString$LeafByteString;

    move-result-object v1

    iput-object v1, p0, Landroid/net/connectivity/com/google/protobuf/RopeByteString$PieceIterator;->next:Landroid/net/connectivity/com/google/protobuf/ByteString$LeafByteString;

    .line 746
    .end local v0    # "rbs":Landroid/net/connectivity/com/google/protobuf/RopeByteString;
    goto :goto_2d

    .line 747
    :cond_25
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/connectivity/com/google/protobuf/RopeByteString$PieceIterator;->breadCrumbs:Ljava/util/ArrayDeque;

    .line 748
    move-object v0, p1

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/ByteString$LeafByteString;

    iput-object v0, p0, Landroid/net/connectivity/com/google/protobuf/RopeByteString$PieceIterator;->next:Landroid/net/connectivity/com/google/protobuf/ByteString$LeafByteString;

    .line 750
    :goto_2d
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/connectivity/com/google/protobuf/ByteString;Landroid/net/connectivity/com/google/protobuf/RopeByteString$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/net/connectivity/com/google/protobuf/ByteString;
    .param p2, "x1"    # Landroid/net/connectivity/com/google/protobuf/RopeByteString$1;

    .line 736
    invoke-direct {p0, p1}, Landroid/net/connectivity/com/google/protobuf/RopeByteString$PieceIterator;-><init>(Landroid/net/connectivity/com/google/protobuf/ByteString;)V

    return-void
.end method

.method private blacklist getLeafByLeft(Landroid/net/connectivity/com/google/protobuf/ByteString;)Landroid/net/connectivity/com/google/protobuf/ByteString$LeafByteString;
    .registers 5
    .param p1, "root"    # Landroid/net/connectivity/com/google/protobuf/ByteString;

    .line 753
    move-object v0, p1

    .line 754
    .local v0, "pos":Landroid/net/connectivity/com/google/protobuf/ByteString;
    :goto_1
    instance-of v1, v0, Landroid/net/connectivity/com/google/protobuf/RopeByteString;

    if-eqz v1, :cond_12

    .line 755
    move-object v1, v0

    check-cast v1, Landroid/net/connectivity/com/google/protobuf/RopeByteString;

    .line 756
    .local v1, "rbs":Landroid/net/connectivity/com/google/protobuf/RopeByteString;
    iget-object v2, p0, Landroid/net/connectivity/com/google/protobuf/RopeByteString$PieceIterator;->breadCrumbs:Ljava/util/ArrayDeque;

    invoke-virtual {v2, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 757
    # getter for: Landroid/net/connectivity/com/google/protobuf/RopeByteString;->left:Landroid/net/connectivity/com/google/protobuf/ByteString;
    invoke-static {v1}, Landroid/net/connectivity/com/google/protobuf/RopeByteString;->access$400(Landroid/net/connectivity/com/google/protobuf/RopeByteString;)Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v0

    .line 758
    .end local v1    # "rbs":Landroid/net/connectivity/com/google/protobuf/RopeByteString;
    goto :goto_1

    .line 759
    :cond_12
    move-object v1, v0

    check-cast v1, Landroid/net/connectivity/com/google/protobuf/ByteString$LeafByteString;

    return-object v1
.end method

.method private blacklist getNextNonEmptyLeaf()Landroid/net/connectivity/com/google/protobuf/ByteString$LeafByteString;
    .registers 3

    .line 766
    nop

    :goto_1
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/RopeByteString$PieceIterator;->breadCrumbs:Ljava/util/ArrayDeque;

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/RopeByteString$PieceIterator;->breadCrumbs:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_26

    .line 769
    :cond_e
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/RopeByteString$PieceIterator;->breadCrumbs:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/RopeByteString;

    # getter for: Landroid/net/connectivity/com/google/protobuf/RopeByteString;->right:Landroid/net/connectivity/com/google/protobuf/ByteString;
    invoke-static {v0}, Landroid/net/connectivity/com/google/protobuf/RopeByteString;->access$500(Landroid/net/connectivity/com/google/protobuf/RopeByteString;)Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/connectivity/com/google/protobuf/RopeByteString$PieceIterator;->getLeafByLeft(Landroid/net/connectivity/com/google/protobuf/ByteString;)Landroid/net/connectivity/com/google/protobuf/ByteString$LeafByteString;

    move-result-object v0

    .line 770
    .local v0, "result":Landroid/net/connectivity/com/google/protobuf/ByteString$LeafByteString;
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/ByteString$LeafByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_25

    .line 771
    return-object v0

    .line 773
    .end local v0    # "result":Landroid/net/connectivity/com/google/protobuf/ByteString$LeafByteString;
    :cond_25
    goto :goto_1

    .line 767
    :cond_26
    :goto_26
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 2

    .line 779
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/RopeByteString$PieceIterator;->next:Landroid/net/connectivity/com/google/protobuf/ByteString$LeafByteString;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist next()Landroid/net/connectivity/com/google/protobuf/ByteString$LeafByteString;
    .registers 3

    .line 789
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/RopeByteString$PieceIterator;->next:Landroid/net/connectivity/com/google/protobuf/ByteString$LeafByteString;

    if-eqz v0, :cond_d

    .line 792
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/RopeByteString$PieceIterator;->next:Landroid/net/connectivity/com/google/protobuf/ByteString$LeafByteString;

    .line 793
    .local v0, "result":Landroid/net/connectivity/com/google/protobuf/ByteString$LeafByteString;
    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/RopeByteString$PieceIterator;->getNextNonEmptyLeaf()Landroid/net/connectivity/com/google/protobuf/ByteString$LeafByteString;

    move-result-object v1

    iput-object v1, p0, Landroid/net/connectivity/com/google/protobuf/RopeByteString$PieceIterator;->next:Landroid/net/connectivity/com/google/protobuf/ByteString$LeafByteString;

    .line 794
    return-object v0

    .line 790
    .end local v0    # "result":Landroid/net/connectivity/com/google/protobuf/ByteString$LeafByteString;
    :cond_d
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 736
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/RopeByteString$PieceIterator;->next()Landroid/net/connectivity/com/google/protobuf/ByteString$LeafByteString;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api remove()V
    .registers 2

    .line 799
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

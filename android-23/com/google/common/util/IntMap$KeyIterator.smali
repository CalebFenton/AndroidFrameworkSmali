.class public Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;
.super Ljava/lang/Object;
.source "IntMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KeyIterator"
.end annotation


# instance fields
.field private currentKey:I

.field private higherKeyEnumerator:Ljava/util/Enumeration;

.field private oneAheadIndex:I

.field final synthetic this$0:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;


# direct methods
.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;)V
    .locals 1

    #@0
    .prologue
    .line 35
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;->this$0:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    const/4 v0, 0x0

    #@6
    .line 36
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;->oneAheadIndex:I

    #@8
    const/high16 v0, -0x80000000

    #@a
    .line 37
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;->currentKey:I

    #@c
    const/4 v0, 0x0

    #@d
    .line 38
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;->higherKeyEnumerator:Ljava/util/Enumeration;

    #@f
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    .line 44
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;->currentKey:I

    #@4
    const/high16 v2, -0x80000000

    #@6
    if-ne v1, v2, :cond_1

    #@8
    .line 47
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;->oneAheadIndex:I

    #@a
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;->this$0:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    #@c
    # getter for: Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->maxLowerKey:I
    invoke-static {v2}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->access$000(Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;)I

    #@f
    move-result v2

    #@10
    if-le v1, v2, :cond_3

    #@12
    .line 56
    :goto_0
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;->this$0:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    #@14
    # getter for: Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->higher:Ljava/util/Hashtable;
    invoke-static {v1}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->access$200(Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;)Ljava/util/Hashtable;

    #@17
    move-result-object v1

    #@18
    if-nez v1, :cond_5

    #@1a
    .line 66
    :cond_0
    return v4

    #@1b
    .line 45
    :cond_1
    return v3

    #@1c
    .line 49
    :cond_2
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;->this$0:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    #@1e
    # getter for: Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->lower:[Ljava/lang/Object;
    invoke-static {v1}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->access$100(Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;)[Ljava/lang/Object;

    #@21
    move-result-object v1

    #@22
    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;->oneAheadIndex:I

    #@24
    aget-object v1, v1, v2

    #@26
    if-nez v1, :cond_4

    #@28
    .line 48
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;->oneAheadIndex:I

    #@2a
    add-int/lit8 v1, v1, 0x1

    #@2c
    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;->oneAheadIndex:I

    #@2e
    :cond_3
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;->oneAheadIndex:I

    #@30
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;->this$0:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    #@32
    # getter for: Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->maxLowerKey:I
    invoke-static {v2}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->access$000(Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;)I

    #@35
    move-result v2

    #@36
    if-le v1, v2, :cond_2

    #@38
    goto :goto_0

    #@39
    .line 51
    :cond_4
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;->oneAheadIndex:I

    #@3b
    add-int/lit8 v2, v1, 0x1

    #@3d
    iput v2, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;->oneAheadIndex:I

    #@3f
    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;->currentKey:I

    #@41
    .line 52
    return v3

    #@42
    .line 57
    :cond_5
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;->higherKeyEnumerator:Ljava/util/Enumeration;

    #@44
    if-eqz v1, :cond_6

    #@46
    .line 60
    :goto_1
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;->higherKeyEnumerator:Ljava/util/Enumeration;

    #@48
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@4b
    move-result v1

    #@4c
    if-eqz v1, :cond_0

    #@4e
    .line 61
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;->higherKeyEnumerator:Ljava/util/Enumeration;

    #@50
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@53
    move-result-object v0

    #@54
    check-cast v0, Ljava/lang/Integer;

    #@56
    .line 62
    .local v0, "key":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@59
    move-result v1

    #@5a
    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;->currentKey:I

    #@5c
    .line 63
    return v3

    #@5d
    .line 58
    .end local v0    # "key":Ljava/lang/Integer;
    :cond_6
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;->this$0:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    #@5f
    # getter for: Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->higher:Ljava/util/Hashtable;
    invoke-static {v1}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->access$200(Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;)Ljava/util/Hashtable;

    #@62
    move-result-object v1

    #@63
    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    #@66
    move-result-object v1

    #@67
    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;->higherKeyEnumerator:Ljava/util/Enumeration;

    #@69
    goto :goto_1
.end method

.method public next()I
    .locals 2

    #@0
    .prologue
    .line 74
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;->hasNext()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 77
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;->currentKey:I

    #@8
    .local v0, "key":I
    const/high16 v1, -0x80000000

    #@a
    .line 78
    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;->currentKey:I

    #@c
    .line 79
    return v0

    #@d
    .line 75
    .end local v0    # "key":I
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    #@f
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@12
    throw v1
.end method

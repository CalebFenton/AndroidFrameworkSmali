.class public Landroid_maps_conflict_avoidance/com/google/common/util/ArrayUtil;
.super Ljava/lang/Object;
.source "ArrayUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 17
    return-void
.end method

.method public static copyIntoVector(Ljava/util/Vector;ILjava/util/Vector;)V
    .locals 3
    .param p0, "src"    # Ljava/util/Vector;
    .param p1, "srcIndex"    # I
    .param p2, "dest"    # Ljava/util/Vector;

    #@0
    .prologue
    .line 384
    monitor-enter p2

    #@1
    .line 385
    move v0, p1

    #@2
    .local v0, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    #@5
    move-result v2

    #@6
    if-lt v0, v2, :cond_0

    #@8
    .line 390
    monitor-exit p2

    #@9
    .line 391
    return-void

    #@a
    .line 386
    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    .line 388
    .local v1, "request":Ljava/lang/Object;
    sub-int v2, v0, p1

    #@10
    invoke-virtual {p2, v1, v2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    #@13
    .line 385
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 390
    .end local v1    # "request":Ljava/lang/Object;
    :catchall_0
    move-exception v2

    #@17
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    throw v2
.end method

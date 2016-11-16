.class Landroid/widget/ExpandableListPosition;
.super Ljava/lang/Object;
.source "ExpandableListPosition.java"


# static fields
.field public static final CHILD:I = 0x1

.field public static final GROUP:I = 0x2

.field private static final MAX_POOL_SIZE:I = 0x5

.field private static sPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ExpandableListPosition;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public childPos:I

.field flatListPos:I

.field public groupPos:I

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 32
    new-instance v0, Ljava/util/ArrayList;

    #@2
    const/4 v1, 0x5

    #@3
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@6
    .line 31
    sput-object v0, Landroid/widget/ExpandableListPosition;->sPool:Ljava/util/ArrayList;

    #@8
    .line 28
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static getRecycledOrCreate()Landroid/widget/ExpandableListPosition;
    .locals 4

    #@0
    .prologue
    .line 117
    sget-object v2, Landroid/widget/ExpandableListPosition;->sPool:Ljava/util/ArrayList;

    #@2
    monitor-enter v2

    #@3
    .line 118
    :try_start_0
    sget-object v1, Landroid/widget/ExpandableListPosition;->sPool:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v1

    #@9
    if-lez v1, :cond_0

    #@b
    .line 119
    sget-object v1, Landroid/widget/ExpandableListPosition;->sPool:Ljava/util/ArrayList;

    #@d
    const/4 v3, 0x0

    #@e
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/widget/ExpandableListPosition;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .local v0, "elp":Landroid/widget/ExpandableListPosition;
    monitor-exit v2

    #@15
    .line 124
    invoke-direct {v0}, Landroid/widget/ExpandableListPosition;->resetState()V

    #@18
    .line 125
    return-object v0

    #@19
    .line 121
    .end local v0    # "elp":Landroid/widget/ExpandableListPosition;
    :cond_0
    :try_start_1
    new-instance v1, Landroid/widget/ExpandableListPosition;

    #@1b
    invoke-direct {v1}, Landroid/widget/ExpandableListPosition;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    monitor-exit v2

    #@1f
    return-object v1

    #@20
    .line 117
    :catchall_0
    move-exception v1

    #@21
    monitor-exit v2

    #@22
    throw v1
.end method

.method static obtain(IIII)Landroid/widget/ExpandableListPosition;
    .locals 1
    .param p0, "type"    # I
    .param p1, "groupPos"    # I
    .param p2, "childPos"    # I
    .param p3, "flatListPos"    # I

    #@0
    .prologue
    .line 107
    invoke-static {}, Landroid/widget/ExpandableListPosition;->getRecycledOrCreate()Landroid/widget/ExpandableListPosition;

    #@3
    move-result-object v0

    #@4
    .line 108
    .local v0, "elp":Landroid/widget/ExpandableListPosition;
    iput p0, v0, Landroid/widget/ExpandableListPosition;->type:I

    #@6
    .line 109
    iput p1, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    #@8
    .line 110
    iput p2, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    #@a
    .line 111
    iput p3, v0, Landroid/widget/ExpandableListPosition;->flatListPos:I

    #@c
    .line 112
    return-object v0
.end method

.method static obtainChildPosition(II)Landroid/widget/ExpandableListPosition;
    .locals 2
    .param p0, "groupPosition"    # I
    .param p1, "childPosition"    # I

    #@0
    .prologue
    .line 86
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {v0, p0, p1, v1}, Landroid/widget/ExpandableListPosition;->obtain(IIII)Landroid/widget/ExpandableListPosition;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method static obtainGroupPosition(I)Landroid/widget/ExpandableListPosition;
    .locals 2
    .param p0, "groupPosition"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 82
    const/4 v0, 0x2

    #@2
    invoke-static {v0, p0, v1, v1}, Landroid/widget/ExpandableListPosition;->obtain(IIII)Landroid/widget/ExpandableListPosition;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method static obtainPosition(J)Landroid/widget/ExpandableListPosition;
    .locals 6
    .param p0, "packedPosition"    # J

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 90
    const-wide v2, 0xffffffffL

    #@6
    cmp-long v1, p0, v2

    #@8
    if-nez v1, :cond_0

    #@a
    .line 91
    const/4 v1, 0x0

    #@b
    return-object v1

    #@c
    .line 94
    :cond_0
    invoke-static {}, Landroid/widget/ExpandableListPosition;->getRecycledOrCreate()Landroid/widget/ExpandableListPosition;

    #@f
    move-result-object v0

    #@10
    .line 95
    .local v0, "elp":Landroid/widget/ExpandableListPosition;
    invoke-static {p0, p1}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    #@13
    move-result v1

    #@14
    iput v1, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    #@16
    .line 96
    invoke-static {p0, p1}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    #@19
    move-result v1

    #@1a
    if-ne v1, v4, :cond_1

    #@1c
    .line 98
    iput v4, v0, Landroid/widget/ExpandableListPosition;->type:I

    #@1e
    .line 99
    invoke-static {p0, p1}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    #@21
    move-result v1

    #@22
    iput v1, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    #@24
    .line 103
    :goto_0
    return-object v0

    #@25
    .line 101
    :cond_1
    const/4 v1, 0x2

    #@26
    iput v1, v0, Landroid/widget/ExpandableListPosition;->type:I

    #@28
    goto :goto_0
.end method

.method private resetState()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 67
    iput v0, p0, Landroid/widget/ExpandableListPosition;->groupPos:I

    #@3
    .line 68
    iput v0, p0, Landroid/widget/ExpandableListPosition;->childPos:I

    #@5
    .line 69
    iput v0, p0, Landroid/widget/ExpandableListPosition;->flatListPos:I

    #@7
    .line 70
    iput v0, p0, Landroid/widget/ExpandableListPosition;->type:I

    #@9
    .line 66
    return-void
.end method


# virtual methods
.method getPackedPosition()J
    .locals 2

    #@0
    .prologue
    .line 77
    iget v0, p0, Landroid/widget/ExpandableListPosition;->type:I

    #@2
    const/4 v1, 0x1

    #@3
    if-ne v0, v1, :cond_0

    #@5
    iget v0, p0, Landroid/widget/ExpandableListPosition;->groupPos:I

    #@7
    iget v1, p0, Landroid/widget/ExpandableListPosition;->childPos:I

    #@9
    invoke-static {v0, v1}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    #@c
    move-result-wide v0

    #@d
    return-wide v0

    #@e
    .line 78
    :cond_0
    iget v0, p0, Landroid/widget/ExpandableListPosition;->groupPos:I

    #@10
    invoke-static {v0}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    #@13
    move-result-wide v0

    #@14
    return-wide v0
.end method

.method public recycle()V
    .locals 3

    #@0
    .prologue
    .line 133
    sget-object v1, Landroid/widget/ExpandableListPosition;->sPool:Ljava/util/ArrayList;

    #@2
    monitor-enter v1

    #@3
    .line 134
    :try_start_0
    sget-object v0, Landroid/widget/ExpandableListPosition;->sPool:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v0

    #@9
    const/4 v2, 0x5

    #@a
    if-ge v0, v2, :cond_0

    #@c
    .line 135
    sget-object v0, Landroid/widget/ExpandableListPosition;->sPool:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    :cond_0
    monitor-exit v1

    #@12
    .line 132
    return-void

    #@13
    .line 133
    :catchall_0
    move-exception v0

    #@14
    monitor-exit v1

    #@15
    throw v0
.end method

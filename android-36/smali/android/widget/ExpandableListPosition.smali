.class Landroid/widget/ExpandableListPosition;
.super Ljava/lang/Object;
.source "ExpandableListPosition.java"


# static fields
.field public static final greylist-max-o CHILD:I = 0x1

.field public static final greylist-max-o GROUP:I = 0x2

.field private static final greylist-max-o MAX_POOL_SIZE:I = 0x5

.field private static greylist-max-o sPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/ExpandableListPosition;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public greylist-max-o childPos:I

.field greylist-max-o flatListPos:I

.field public greylist-max-o groupPos:I

.field public greylist-max-o type:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Landroid/widget/ExpandableListPosition;->sPool:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method private static greylist-max-o getRecycledOrCreate()Landroid/widget/ExpandableListPosition;
    .registers 3

    .line 117
    sget-object v0, Landroid/widget/ExpandableListPosition;->sPool:Ljava/util/ArrayList;

    monitor-enter v0

    .line 118
    :try_start_3
    sget-object v1, Landroid/widget/ExpandableListPosition;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_19

    .line 119
    sget-object v1, Landroid/widget/ExpandableListPosition;->sPool:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ExpandableListPosition;

    .line 123
    .local v1, "elp":Landroid/widget/ExpandableListPosition;
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_20

    .line 124
    invoke-direct {v1}, Landroid/widget/ExpandableListPosition;->resetState()V

    .line 125
    return-object v1

    .line 121
    .end local v1    # "elp":Landroid/widget/ExpandableListPosition;
    :cond_19
    :try_start_19
    new-instance v1, Landroid/widget/ExpandableListPosition;

    invoke-direct {v1}, Landroid/widget/ExpandableListPosition;-><init>()V

    monitor-exit v0

    return-object v1

    .line 123
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_20

    throw v1
.end method

.method static greylist-max-o obtain(IIII)Landroid/widget/ExpandableListPosition;
    .registers 5
    .param p0, "type"    # I
    .param p1, "groupPos"    # I
    .param p2, "childPos"    # I
    .param p3, "flatListPos"    # I

    .line 107
    invoke-static {}, Landroid/widget/ExpandableListPosition;->getRecycledOrCreate()Landroid/widget/ExpandableListPosition;

    move-result-object v0

    .line 108
    .local v0, "elp":Landroid/widget/ExpandableListPosition;
    iput p0, v0, Landroid/widget/ExpandableListPosition;->type:I

    .line 109
    iput p1, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    .line 110
    iput p2, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    .line 111
    iput p3, v0, Landroid/widget/ExpandableListPosition;->flatListPos:I

    .line 112
    return-object v0
.end method

.method static greylist-max-o obtainChildPosition(II)Landroid/widget/ExpandableListPosition;
    .registers 4
    .param p0, "groupPosition"    # I
    .param p1, "childPosition"    # I

    .line 86
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Landroid/widget/ExpandableListPosition;->obtain(IIII)Landroid/widget/ExpandableListPosition;

    move-result-object v0

    return-object v0
.end method

.method static greylist-max-o obtainGroupPosition(I)Landroid/widget/ExpandableListPosition;
    .registers 3
    .param p0, "groupPosition"    # I

    .line 82
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, v1}, Landroid/widget/ExpandableListPosition;->obtain(IIII)Landroid/widget/ExpandableListPosition;

    move-result-object v0

    return-object v0
.end method

.method static greylist-max-o obtainPosition(J)Landroid/widget/ExpandableListPosition;
    .registers 5
    .param p0, "packedPosition"    # J

    .line 90
    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_b

    .line 91
    const/4 v0, 0x0

    return-object v0

    .line 94
    :cond_b
    invoke-static {}, Landroid/widget/ExpandableListPosition;->getRecycledOrCreate()Landroid/widget/ExpandableListPosition;

    move-result-object v0

    .line 95
    .local v0, "elp":Landroid/widget/ExpandableListPosition;
    invoke-static {p0, p1}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v1

    iput v1, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    .line 96
    invoke-static {p0, p1}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_25

    .line 98
    iput v2, v0, Landroid/widget/ExpandableListPosition;->type:I

    .line 99
    invoke-static {p0, p1}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v1

    iput v1, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    goto :goto_28

    .line 101
    :cond_25
    const/4 v1, 0x2

    iput v1, v0, Landroid/widget/ExpandableListPosition;->type:I

    .line 103
    :goto_28
    return-object v0
.end method

.method private greylist-max-o resetState()V
    .registers 2

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ExpandableListPosition;->groupPos:I

    .line 68
    iput v0, p0, Landroid/widget/ExpandableListPosition;->childPos:I

    .line 69
    iput v0, p0, Landroid/widget/ExpandableListPosition;->flatListPos:I

    .line 70
    iput v0, p0, Landroid/widget/ExpandableListPosition;->type:I

    .line 71
    return-void
.end method


# virtual methods
.method greylist-max-o getPackedPosition()J
    .registers 3

    .line 77
    iget v0, p0, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    iget v0, p0, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v1, p0, Landroid/widget/ExpandableListPosition;->childPos:I

    invoke-static {v0, v1}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v0

    return-wide v0

    .line 78
    :cond_e
    iget v0, p0, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-static {v0}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist-max-o recycle()V
    .registers 4

    .line 133
    sget-object v0, Landroid/widget/ExpandableListPosition;->sPool:Ljava/util/ArrayList;

    monitor-enter v0

    .line 134
    :try_start_3
    sget-object v1, Landroid/widget/ExpandableListPosition;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_11

    .line 135
    sget-object v1, Landroid/widget/ExpandableListPosition;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_11
    monitor-exit v0

    .line 138
    return-void

    .line 137
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

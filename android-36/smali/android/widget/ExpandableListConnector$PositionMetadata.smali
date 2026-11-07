.class public Landroid/widget/ExpandableListConnector$PositionMetadata;
.super Ljava/lang/Object;
.source "ExpandableListConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ExpandableListConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PositionMetadata"
.end annotation


# static fields
.field private static final greylist-max-o MAX_POOL_SIZE:I = 0x5

.field private static greylist-max-o sPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/ExpandableListConnector$PositionMetadata;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public greylist-max-o groupInsertIndex:I

.field public greylist-max-o groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

.field public greylist-max-o position:Landroid/widget/ExpandableListPosition;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 957
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 991
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 992
    return-void
.end method

.method private static greylist-max-o getRecycledOrCreate()Landroid/widget/ExpandableListConnector$PositionMetadata;
    .registers 3

    .line 1005
    sget-object v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1006
    :try_start_3
    sget-object v1, Landroid/widget/ExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_19

    .line 1007
    sget-object v1, Landroid/widget/ExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ExpandableListConnector$PositionMetadata;

    .line 1011
    .local v1, "pm":Landroid/widget/ExpandableListConnector$PositionMetadata;
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_20

    .line 1012
    invoke-direct {v1}, Landroid/widget/ExpandableListConnector$PositionMetadata;->resetState()V

    .line 1013
    return-object v1

    .line 1009
    .end local v1    # "pm":Landroid/widget/ExpandableListConnector$PositionMetadata;
    :cond_19
    :try_start_19
    new-instance v1, Landroid/widget/ExpandableListConnector$PositionMetadata;

    invoke-direct {v1}, Landroid/widget/ExpandableListConnector$PositionMetadata;-><init>()V

    monitor-exit v0

    return-object v1

    .line 1011
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_20

    throw v1
.end method

.method static greylist-max-o obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;
    .registers 8
    .param p0, "flatListPos"    # I
    .param p1, "type"    # I
    .param p2, "groupPos"    # I
    .param p3, "childPos"    # I
    .param p4, "groupMetadata"    # Landroid/widget/ExpandableListConnector$GroupMetadata;
    .param p5, "groupInsertIndex"    # I

    .line 996
    invoke-static {}, Landroid/widget/ExpandableListConnector$PositionMetadata;->getRecycledOrCreate()Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 997
    .local v0, "pm":Landroid/widget/ExpandableListConnector$PositionMetadata;
    invoke-static {p1, p2, p3, p0}, Landroid/widget/ExpandableListPosition;->obtain(IIII)Landroid/widget/ExpandableListPosition;

    move-result-object v1

    iput-object v1, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    .line 998
    iput-object p4, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 999
    iput p5, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    .line 1000
    return-object v0
.end method

.method private greylist-max-o resetState()V
    .registers 3

    .line 980
    iget-object v0, p0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 981
    iget-object v0, p0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    invoke-virtual {v0}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 982
    iput-object v1, p0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    .line 984
    :cond_c
    iput-object v1, p0, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 985
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    .line 986
    return-void
.end method


# virtual methods
.method public greylist-max-o isExpanded()Z
    .registers 2

    .line 1032
    iget-object v0, p0, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public greylist-max-o recycle()V
    .registers 4

    .line 1017
    invoke-direct {p0}, Landroid/widget/ExpandableListConnector$PositionMetadata;->resetState()V

    .line 1018
    sget-object v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1019
    :try_start_6
    sget-object v1, Landroid/widget/ExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_14

    .line 1020
    sget-object v1, Landroid/widget/ExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1022
    :cond_14
    monitor-exit v0

    .line 1023
    return-void

    .line 1022
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_16

    throw v1
.end method

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
.field private static final MAX_POOL_SIZE:I = 0x5

.field private static sPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ExpandableListConnector$PositionMetadata;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public groupInsertIndex:I

.field public groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

.field public position:Landroid/widget/ExpandableListPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 958
    new-instance v0, Ljava/util/ArrayList;

    #@2
    const/4 v1, 0x5

    #@3
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@6
    .line 957
    sput-object v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    #@8
    .line 954
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 991
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static getRecycledOrCreate()Landroid/widget/ExpandableListConnector$PositionMetadata;
    .locals 4

    #@0
    .prologue
    .line 1005
    sget-object v2, Landroid/widget/ExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    #@2
    monitor-enter v2

    #@3
    .line 1006
    :try_start_0
    sget-object v1, Landroid/widget/ExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v1

    #@9
    if-lez v1, :cond_0

    #@b
    .line 1007
    sget-object v1, Landroid/widget/ExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    #@d
    const/4 v3, 0x0

    #@e
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/widget/ExpandableListConnector$PositionMetadata;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .local v0, "pm":Landroid/widget/ExpandableListConnector$PositionMetadata;
    monitor-exit v2

    #@15
    .line 1012
    invoke-direct {v0}, Landroid/widget/ExpandableListConnector$PositionMetadata;->resetState()V

    #@18
    .line 1013
    return-object v0

    #@19
    .line 1009
    .end local v0    # "pm":Landroid/widget/ExpandableListConnector$PositionMetadata;
    :cond_0
    :try_start_1
    new-instance v1, Landroid/widget/ExpandableListConnector$PositionMetadata;

    #@1b
    invoke-direct {v1}, Landroid/widget/ExpandableListConnector$PositionMetadata;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    monitor-exit v2

    #@1f
    return-object v1

    #@20
    .line 1005
    :catchall_0
    move-exception v1

    #@21
    monitor-exit v2

    #@22
    throw v1
.end method

.method static obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;
    .locals 2
    .param p0, "flatListPos"    # I
    .param p1, "type"    # I
    .param p2, "groupPos"    # I
    .param p3, "childPos"    # I
    .param p4, "groupMetadata"    # Landroid/widget/ExpandableListConnector$GroupMetadata;
    .param p5, "groupInsertIndex"    # I

    #@0
    .prologue
    .line 996
    invoke-static {}, Landroid/widget/ExpandableListConnector$PositionMetadata;->getRecycledOrCreate()Landroid/widget/ExpandableListConnector$PositionMetadata;

    #@3
    move-result-object v0

    #@4
    .line 997
    .local v0, "pm":Landroid/widget/ExpandableListConnector$PositionMetadata;
    invoke-static {p1, p2, p3, p0}, Landroid/widget/ExpandableListPosition;->obtain(IIII)Landroid/widget/ExpandableListPosition;

    #@7
    move-result-object v1

    #@8
    iput-object v1, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    #@a
    .line 998
    iput-object p4, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    #@c
    .line 999
    iput p5, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    #@e
    .line 1000
    return-object v0
.end method

.method private resetState()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 980
    iget-object v0, p0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 981
    iget-object v0, p0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    #@7
    invoke-virtual {v0}, Landroid/widget/ExpandableListPosition;->recycle()V

    #@a
    .line 982
    iput-object v1, p0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    #@c
    .line 984
    :cond_0
    iput-object v1, p0, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    #@e
    .line 985
    const/4 v0, 0x0

    #@f
    iput v0, p0, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    #@11
    .line 979
    return-void
.end method


# virtual methods
.method public isExpanded()Z
    .locals 1

    #@0
    .prologue
    .line 1032
    iget-object v0, p0, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public recycle()V
    .locals 3

    #@0
    .prologue
    .line 1017
    invoke-direct {p0}, Landroid/widget/ExpandableListConnector$PositionMetadata;->resetState()V

    #@3
    .line 1018
    sget-object v1, Landroid/widget/ExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    #@5
    monitor-enter v1

    #@6
    .line 1019
    :try_start_0
    sget-object v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v0

    #@c
    const/4 v2, 0x5

    #@d
    if-ge v0, v2, :cond_0

    #@f
    .line 1020
    sget-object v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    :cond_0
    monitor-exit v1

    #@15
    .line 1016
    return-void

    #@16
    .line 1018
    :catchall_0
    move-exception v0

    #@17
    monitor-exit v1

    #@18
    throw v0
.end method

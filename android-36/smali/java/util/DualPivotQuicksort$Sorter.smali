.class final Ljava/util/DualPivotQuicksort$Sorter;
.super Ljava/util/concurrent/CountedCompleter;
.source "DualPivotQuicksort.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/DualPivotQuicksort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Sorter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/CountedCompleter<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x133ef52L


# instance fields
.field private final blacklist a:Ljava/lang/Object;

.field private final blacklist b:Ljava/lang/Object;

.field private final blacklist depth:I

.field private final blacklist low:I

.field private final blacklist offset:I

.field private final blacklist size:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetb(Ljava/util/DualPivotQuicksort$Sorter;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Ljava/util/DualPivotQuicksort$Sorter;->b:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetoffset(Ljava/util/DualPivotQuicksort$Sorter;)I
    .registers 1

    iget p0, p0, Ljava/util/DualPivotQuicksort$Sorter;->offset:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mforkSorter(Ljava/util/DualPivotQuicksort$Sorter;III)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Ljava/util/DualPivotQuicksort$Sorter;->forkSorter(III)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/concurrent/CountedCompleter;Ljava/lang/Object;Ljava/lang/Object;IIII)V
    .registers 8
    .param p2, "a"    # Ljava/lang/Object;
    .param p3, "b"    # Ljava/lang/Object;
    .param p4, "low"    # I
    .param p5, "size"    # I
    .param p6, "offset"    # I
    .param p7, "depth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "IIII)V"
        }
    .end annotation

    .line 4006
    .local p1, "parent":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 4007
    iput-object p2, p0, Ljava/util/DualPivotQuicksort$Sorter;->a:Ljava/lang/Object;

    .line 4008
    iput-object p3, p0, Ljava/util/DualPivotQuicksort$Sorter;->b:Ljava/lang/Object;

    .line 4009
    iput p4, p0, Ljava/util/DualPivotQuicksort$Sorter;->low:I

    .line 4010
    iput p5, p0, Ljava/util/DualPivotQuicksort$Sorter;->size:I

    .line 4011
    iput p6, p0, Ljava/util/DualPivotQuicksort$Sorter;->offset:I

    .line 4012
    iput p7, p0, Ljava/util/DualPivotQuicksort$Sorter;->depth:I

    .line 4013
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/concurrent/CountedCompleter;Ljava/lang/Object;Ljava/lang/Object;IIIILjava/util/DualPivotQuicksort-IA;)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Ljava/util/DualPivotQuicksort$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;Ljava/lang/Object;Ljava/lang/Object;IIII)V

    return-void
.end method

.method private blacklist forkSorter(III)V
    .registers 13
    .param p1, "depth"    # I
    .param p2, "low"    # I
    .param p3, "high"    # I

    .line 4059
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/DualPivotQuicksort$Sorter;->addToPendingCount(I)V

    .line 4060
    iget-object v3, p0, Ljava/util/DualPivotQuicksort$Sorter;->a:Ljava/lang/Object;

    .line 4061
    .local v3, "a":Ljava/lang/Object;
    new-instance v1, Ljava/util/DualPivotQuicksort$Sorter;

    iget-object v4, p0, Ljava/util/DualPivotQuicksort$Sorter;->b:Ljava/lang/Object;

    sub-int v6, p3, p2

    iget v7, p0, Ljava/util/DualPivotQuicksort$Sorter;->offset:I

    move-object v2, p0

    move v8, p1

    move v5, p2

    .end local p1    # "depth":I
    .end local p2    # "low":I
    .local v5, "low":I
    .local v8, "depth":I
    invoke-direct/range {v1 .. v8}, Ljava/util/DualPivotQuicksort$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;Ljava/lang/Object;Ljava/lang/Object;IIII)V

    invoke-virtual {v1}, Ljava/util/DualPivotQuicksort$Sorter;->fork()Ljava/util/concurrent/ForkJoinTask;

    .line 4062
    return-void
.end method


# virtual methods
.method public final whitelist test-api compute()V
    .registers 10

    .line 4017
    iget v0, p0, Ljava/util/DualPivotQuicksort$Sorter;->depth:I

    if-gez v0, :cond_3b

    .line 4018
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/DualPivotQuicksort$Sorter;->setPendingCount(I)V

    .line 4019
    iget v0, p0, Ljava/util/DualPivotQuicksort$Sorter;->size:I

    shr-int/lit8 v5, v0, 0x1

    .line 4020
    .local v5, "half":I
    new-instance v0, Ljava/util/DualPivotQuicksort$Sorter;

    iget-object v2, p0, Ljava/util/DualPivotQuicksort$Sorter;->b:Ljava/lang/Object;

    iget-object v3, p0, Ljava/util/DualPivotQuicksort$Sorter;->a:Ljava/lang/Object;

    iget v4, p0, Ljava/util/DualPivotQuicksort$Sorter;->low:I

    iget v6, p0, Ljava/util/DualPivotQuicksort$Sorter;->offset:I

    iget v7, p0, Ljava/util/DualPivotQuicksort$Sorter;->depth:I

    add-int/lit8 v7, v7, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Ljava/util/DualPivotQuicksort$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;Ljava/lang/Object;Ljava/lang/Object;IIII)V

    move v8, v5

    .end local v5    # "half":I
    .local v8, "half":I
    invoke-virtual {v0}, Ljava/util/DualPivotQuicksort$Sorter;->fork()Ljava/util/concurrent/ForkJoinTask;

    .line 4021
    new-instance v0, Ljava/util/DualPivotQuicksort$Sorter;

    iget-object v2, p0, Ljava/util/DualPivotQuicksort$Sorter;->b:Ljava/lang/Object;

    iget-object v3, p0, Ljava/util/DualPivotQuicksort$Sorter;->a:Ljava/lang/Object;

    iget v4, p0, Ljava/util/DualPivotQuicksort$Sorter;->low:I

    add-int/2addr v4, v8

    iget v5, p0, Ljava/util/DualPivotQuicksort$Sorter;->size:I

    sub-int/2addr v5, v8

    iget v6, p0, Ljava/util/DualPivotQuicksort$Sorter;->offset:I

    iget v7, p0, Ljava/util/DualPivotQuicksort$Sorter;->depth:I

    add-int/lit8 v7, v7, 0x1

    invoke-direct/range {v0 .. v7}, Ljava/util/DualPivotQuicksort$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;Ljava/lang/Object;Ljava/lang/Object;IIII)V

    invoke-virtual {v0}, Ljava/util/DualPivotQuicksort$Sorter;->compute()V

    .line 4022
    .end local v8    # "half":I
    goto :goto_96

    .line 4023
    :cond_3b
    iget-object v0, p0, Ljava/util/DualPivotQuicksort$Sorter;->a:Ljava/lang/Object;

    instance-of v0, v0, [I

    if-eqz v0, :cond_52

    .line 4024
    iget-object v0, p0, Ljava/util/DualPivotQuicksort$Sorter;->a:Ljava/lang/Object;

    check-cast v0, [I

    iget v2, p0, Ljava/util/DualPivotQuicksort$Sorter;->depth:I

    iget v3, p0, Ljava/util/DualPivotQuicksort$Sorter;->low:I

    iget v4, p0, Ljava/util/DualPivotQuicksort$Sorter;->low:I

    iget v5, p0, Ljava/util/DualPivotQuicksort$Sorter;->size:I

    add-int/2addr v4, v5

    invoke-static {p0, v0, v2, v3, v4}, Ljava/util/DualPivotQuicksort;->sort(Ljava/util/DualPivotQuicksort$Sorter;[IIII)V

    goto :goto_96

    .line 4025
    :cond_52
    iget-object v0, p0, Ljava/util/DualPivotQuicksort$Sorter;->a:Ljava/lang/Object;

    instance-of v0, v0, [J

    if-eqz v0, :cond_69

    .line 4026
    iget-object v0, p0, Ljava/util/DualPivotQuicksort$Sorter;->a:Ljava/lang/Object;

    check-cast v0, [J

    iget v2, p0, Ljava/util/DualPivotQuicksort$Sorter;->depth:I

    iget v3, p0, Ljava/util/DualPivotQuicksort$Sorter;->low:I

    iget v4, p0, Ljava/util/DualPivotQuicksort$Sorter;->low:I

    iget v5, p0, Ljava/util/DualPivotQuicksort$Sorter;->size:I

    add-int/2addr v4, v5

    invoke-static {p0, v0, v2, v3, v4}, Ljava/util/DualPivotQuicksort;->sort(Ljava/util/DualPivotQuicksort$Sorter;[JIII)V

    goto :goto_96

    .line 4027
    :cond_69
    iget-object v0, p0, Ljava/util/DualPivotQuicksort$Sorter;->a:Ljava/lang/Object;

    instance-of v0, v0, [F

    if-eqz v0, :cond_80

    .line 4028
    iget-object v0, p0, Ljava/util/DualPivotQuicksort$Sorter;->a:Ljava/lang/Object;

    check-cast v0, [F

    iget v2, p0, Ljava/util/DualPivotQuicksort$Sorter;->depth:I

    iget v3, p0, Ljava/util/DualPivotQuicksort$Sorter;->low:I

    iget v4, p0, Ljava/util/DualPivotQuicksort$Sorter;->low:I

    iget v5, p0, Ljava/util/DualPivotQuicksort$Sorter;->size:I

    add-int/2addr v4, v5

    invoke-static {p0, v0, v2, v3, v4}, Ljava/util/DualPivotQuicksort;->sort(Ljava/util/DualPivotQuicksort$Sorter;[FIII)V

    goto :goto_96

    .line 4029
    :cond_80
    iget-object v0, p0, Ljava/util/DualPivotQuicksort$Sorter;->a:Ljava/lang/Object;

    instance-of v0, v0, [D

    if-eqz v0, :cond_9a

    .line 4030
    iget-object v0, p0, Ljava/util/DualPivotQuicksort$Sorter;->a:Ljava/lang/Object;

    check-cast v0, [D

    iget v2, p0, Ljava/util/DualPivotQuicksort$Sorter;->depth:I

    iget v3, p0, Ljava/util/DualPivotQuicksort$Sorter;->low:I

    iget v4, p0, Ljava/util/DualPivotQuicksort$Sorter;->low:I

    iget v5, p0, Ljava/util/DualPivotQuicksort$Sorter;->size:I

    add-int/2addr v4, v5

    invoke-static {p0, v0, v2, v3, v4}, Ljava/util/DualPivotQuicksort;->sort(Ljava/util/DualPivotQuicksort$Sorter;[DIII)V

    .line 4036
    :goto_96
    invoke-virtual {p0}, Ljava/util/DualPivotQuicksort$Sorter;->tryComplete()V

    .line 4037
    return-void

    .line 4032
    :cond_9a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown type of array: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/util/DualPivotQuicksort$Sorter;->a:Ljava/lang/Object;

    .line 4033
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api onCompletion(Ljava/util/concurrent/CountedCompleter;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter<",
            "*>;)V"
        }
    .end annotation

    .line 4041
    .local p1, "caller":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    iget v0, p0, Ljava/util/DualPivotQuicksort$Sorter;->depth:I

    if-gez v0, :cond_50

    .line 4042
    iget v0, p0, Ljava/util/DualPivotQuicksort$Sorter;->low:I

    iget v1, p0, Ljava/util/DualPivotQuicksort$Sorter;->size:I

    const/4 v2, 0x1

    shr-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 4043
    .local v0, "mi":I
    iget v1, p0, Ljava/util/DualPivotQuicksort$Sorter;->depth:I

    and-int/2addr v1, v2

    if-nez v1, :cond_11

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    .line 4045
    .local v2, "src":Z
    :goto_12
    new-instance v3, Ljava/util/DualPivotQuicksort$Merger;

    iget-object v5, p0, Ljava/util/DualPivotQuicksort$Sorter;->a:Ljava/lang/Object;

    .line 4047
    iget v1, p0, Ljava/util/DualPivotQuicksort$Sorter;->low:I

    if-eqz v2, :cond_1b

    goto :goto_1e

    :cond_1b
    iget v4, p0, Ljava/util/DualPivotQuicksort$Sorter;->offset:I

    sub-int/2addr v1, v4

    :goto_1e
    move v6, v1

    iget-object v7, p0, Ljava/util/DualPivotQuicksort$Sorter;->b:Ljava/lang/Object;

    .line 4049
    iget v1, p0, Ljava/util/DualPivotQuicksort$Sorter;->low:I

    if-eqz v2, :cond_28

    iget v4, p0, Ljava/util/DualPivotQuicksort$Sorter;->offset:I

    sub-int/2addr v1, v4

    :cond_28
    move v8, v1

    .line 4050
    if-eqz v2, :cond_31

    iget v1, p0, Ljava/util/DualPivotQuicksort$Sorter;->offset:I

    sub-int v1, v0, v1

    move v9, v1

    goto :goto_32

    :cond_31
    move v9, v0

    :goto_32
    iget-object v10, p0, Ljava/util/DualPivotQuicksort$Sorter;->b:Ljava/lang/Object;

    .line 4052
    if-eqz v2, :cond_3c

    iget v1, p0, Ljava/util/DualPivotQuicksort$Sorter;->offset:I

    sub-int v1, v0, v1

    move v11, v1

    goto :goto_3d

    :cond_3c
    move v11, v0

    .line 4053
    :goto_3d
    iget v1, p0, Ljava/util/DualPivotQuicksort$Sorter;->low:I

    iget v4, p0, Ljava/util/DualPivotQuicksort$Sorter;->size:I

    add-int/2addr v1, v4

    if-eqz v2, :cond_47

    iget v4, p0, Ljava/util/DualPivotQuicksort$Sorter;->offset:I

    sub-int/2addr v1, v4

    :cond_47
    move v12, v1

    const/4 v13, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v3 .. v13}, Ljava/util/DualPivotQuicksort$Merger;-><init>(Ljava/util/concurrent/CountedCompleter;Ljava/lang/Object;ILjava/lang/Object;IILjava/lang/Object;IILjava/util/DualPivotQuicksort-IA;)V

    .line 4054
    invoke-virtual {v3}, Ljava/util/DualPivotQuicksort$Merger;->invoke()Ljava/lang/Object;

    .line 4056
    .end local v0    # "mi":I
    .end local v2    # "src":Z
    :cond_50
    return-void
.end method

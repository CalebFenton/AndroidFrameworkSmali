.class final Ljava/util/DualPivotQuicksort$Merger;
.super Ljava/util/concurrent/CountedCompleter;
.source "DualPivotQuicksort.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/DualPivotQuicksort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Merger"
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
.field private final blacklist a1:Ljava/lang/Object;

.field private final blacklist a2:Ljava/lang/Object;

.field private final blacklist dst:Ljava/lang/Object;

.field private final blacklist hi1:I

.field private final blacklist hi2:I

.field private final blacklist k:I

.field private final blacklist lo1:I

.field private final blacklist lo2:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$mforkMerger(Ljava/util/DualPivotQuicksort$Merger;Ljava/lang/Object;ILjava/lang/Object;IILjava/lang/Object;II)V
    .registers 9

    invoke-direct/range {p0 .. p8}, Ljava/util/DualPivotQuicksort$Merger;->forkMerger(Ljava/lang/Object;ILjava/lang/Object;IILjava/lang/Object;II)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/concurrent/CountedCompleter;Ljava/lang/Object;ILjava/lang/Object;IILjava/lang/Object;II)V
    .registers 10
    .param p2, "dst"    # Ljava/lang/Object;
    .param p3, "k"    # I
    .param p4, "a1"    # Ljava/lang/Object;
    .param p5, "lo1"    # I
    .param p6, "hi1"    # I
    .param p7, "a2"    # Ljava/lang/Object;
    .param p8, "lo2"    # I
    .param p9, "hi2"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter<",
            "*>;",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/Object;",
            "II",
            "Ljava/lang/Object;",
            "II)V"
        }
    .end annotation

    .line 4076
    .local p1, "parent":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 4077
    iput-object p2, p0, Ljava/util/DualPivotQuicksort$Merger;->dst:Ljava/lang/Object;

    .line 4078
    iput p3, p0, Ljava/util/DualPivotQuicksort$Merger;->k:I

    .line 4079
    iput-object p4, p0, Ljava/util/DualPivotQuicksort$Merger;->a1:Ljava/lang/Object;

    .line 4080
    iput p5, p0, Ljava/util/DualPivotQuicksort$Merger;->lo1:I

    .line 4081
    iput p6, p0, Ljava/util/DualPivotQuicksort$Merger;->hi1:I

    .line 4082
    iput-object p7, p0, Ljava/util/DualPivotQuicksort$Merger;->a2:Ljava/lang/Object;

    .line 4083
    iput p8, p0, Ljava/util/DualPivotQuicksort$Merger;->lo2:I

    .line 4084
    iput p9, p0, Ljava/util/DualPivotQuicksort$Merger;->hi2:I

    .line 4085
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/concurrent/CountedCompleter;Ljava/lang/Object;ILjava/lang/Object;IILjava/lang/Object;IILjava/util/DualPivotQuicksort-IA;)V
    .registers 11

    invoke-direct/range {p0 .. p9}, Ljava/util/DualPivotQuicksort$Merger;-><init>(Ljava/util/concurrent/CountedCompleter;Ljava/lang/Object;ILjava/lang/Object;IILjava/lang/Object;II)V

    return-void
.end method

.method private blacklist forkMerger(Ljava/lang/Object;ILjava/lang/Object;IILjava/lang/Object;II)V
    .registers 20
    .param p1, "dst"    # Ljava/lang/Object;
    .param p2, "k"    # I
    .param p3, "a1"    # Ljava/lang/Object;
    .param p4, "lo1"    # I
    .param p5, "hi1"    # I
    .param p6, "a2"    # Ljava/lang/Object;
    .param p7, "lo2"    # I
    .param p8, "hi2"    # I

    .line 4110
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/DualPivotQuicksort$Merger;->addToPendingCount(I)V

    .line 4111
    new-instance v1, Ljava/util/DualPivotQuicksort$Merger;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Ljava/util/DualPivotQuicksort$Merger;-><init>(Ljava/util/concurrent/CountedCompleter;Ljava/lang/Object;ILjava/lang/Object;IILjava/lang/Object;II)V

    invoke-virtual {v1}, Ljava/util/DualPivotQuicksort$Merger;->fork()Ljava/util/concurrent/ForkJoinTask;

    .line 4112
    return-void
.end method


# virtual methods
.method public final whitelist test-api compute()V
    .registers 10

    .line 4089
    iget-object v1, p0, Ljava/util/DualPivotQuicksort$Merger;->dst:Ljava/lang/Object;

    instance-of v1, v1, [I

    if-eqz v1, :cond_21

    .line 4090
    iget-object v1, p0, Ljava/util/DualPivotQuicksort$Merger;->dst:Ljava/lang/Object;

    check-cast v1, [I

    iget v2, p0, Ljava/util/DualPivotQuicksort$Merger;->k:I

    iget-object v3, p0, Ljava/util/DualPivotQuicksort$Merger;->a1:Ljava/lang/Object;

    check-cast v3, [I

    iget v4, p0, Ljava/util/DualPivotQuicksort$Merger;->lo1:I

    iget v5, p0, Ljava/util/DualPivotQuicksort$Merger;->hi1:I

    iget-object v6, p0, Ljava/util/DualPivotQuicksort$Merger;->a2:Ljava/lang/Object;

    check-cast v6, [I

    iget v7, p0, Ljava/util/DualPivotQuicksort$Merger;->lo2:I

    iget v8, p0, Ljava/util/DualPivotQuicksort$Merger;->hi2:I

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Ljava/util/DualPivotQuicksort;->-$$Nest$smmergeParts(Ljava/util/DualPivotQuicksort$Merger;[II[III[III)V

    goto :goto_83

    .line 4092
    :cond_21
    iget-object v1, p0, Ljava/util/DualPivotQuicksort$Merger;->dst:Ljava/lang/Object;

    instance-of v1, v1, [J

    if-eqz v1, :cond_42

    .line 4093
    iget-object v1, p0, Ljava/util/DualPivotQuicksort$Merger;->dst:Ljava/lang/Object;

    check-cast v1, [J

    iget v2, p0, Ljava/util/DualPivotQuicksort$Merger;->k:I

    iget-object v3, p0, Ljava/util/DualPivotQuicksort$Merger;->a1:Ljava/lang/Object;

    check-cast v3, [J

    iget v4, p0, Ljava/util/DualPivotQuicksort$Merger;->lo1:I

    iget v5, p0, Ljava/util/DualPivotQuicksort$Merger;->hi1:I

    iget-object v6, p0, Ljava/util/DualPivotQuicksort$Merger;->a2:Ljava/lang/Object;

    check-cast v6, [J

    iget v7, p0, Ljava/util/DualPivotQuicksort$Merger;->lo2:I

    iget v8, p0, Ljava/util/DualPivotQuicksort$Merger;->hi2:I

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Ljava/util/DualPivotQuicksort;->-$$Nest$smmergeParts(Ljava/util/DualPivotQuicksort$Merger;[JI[JII[JII)V

    goto :goto_83

    .line 4095
    :cond_42
    iget-object v1, p0, Ljava/util/DualPivotQuicksort$Merger;->dst:Ljava/lang/Object;

    instance-of v1, v1, [F

    if-eqz v1, :cond_63

    .line 4096
    iget-object v1, p0, Ljava/util/DualPivotQuicksort$Merger;->dst:Ljava/lang/Object;

    check-cast v1, [F

    iget v2, p0, Ljava/util/DualPivotQuicksort$Merger;->k:I

    iget-object v3, p0, Ljava/util/DualPivotQuicksort$Merger;->a1:Ljava/lang/Object;

    check-cast v3, [F

    iget v4, p0, Ljava/util/DualPivotQuicksort$Merger;->lo1:I

    iget v5, p0, Ljava/util/DualPivotQuicksort$Merger;->hi1:I

    iget-object v6, p0, Ljava/util/DualPivotQuicksort$Merger;->a2:Ljava/lang/Object;

    check-cast v6, [F

    iget v7, p0, Ljava/util/DualPivotQuicksort$Merger;->lo2:I

    iget v8, p0, Ljava/util/DualPivotQuicksort$Merger;->hi2:I

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Ljava/util/DualPivotQuicksort;->-$$Nest$smmergeParts(Ljava/util/DualPivotQuicksort$Merger;[FI[FII[FII)V

    goto :goto_83

    .line 4098
    :cond_63
    iget-object v1, p0, Ljava/util/DualPivotQuicksort$Merger;->dst:Ljava/lang/Object;

    instance-of v1, v1, [D

    if-eqz v1, :cond_87

    .line 4099
    iget-object v1, p0, Ljava/util/DualPivotQuicksort$Merger;->dst:Ljava/lang/Object;

    check-cast v1, [D

    iget v2, p0, Ljava/util/DualPivotQuicksort$Merger;->k:I

    iget-object v3, p0, Ljava/util/DualPivotQuicksort$Merger;->a1:Ljava/lang/Object;

    check-cast v3, [D

    iget v4, p0, Ljava/util/DualPivotQuicksort$Merger;->lo1:I

    iget v5, p0, Ljava/util/DualPivotQuicksort$Merger;->hi1:I

    iget-object v6, p0, Ljava/util/DualPivotQuicksort$Merger;->a2:Ljava/lang/Object;

    check-cast v6, [D

    iget v7, p0, Ljava/util/DualPivotQuicksort$Merger;->lo2:I

    iget v8, p0, Ljava/util/DualPivotQuicksort$Merger;->hi2:I

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Ljava/util/DualPivotQuicksort;->-$$Nest$smmergeParts(Ljava/util/DualPivotQuicksort$Merger;[DI[DII[DII)V

    .line 4105
    :goto_83
    invoke-virtual {p0}, Ljava/util/DualPivotQuicksort$Merger;->propagateCompletion()V

    .line 4106
    return-void

    .line 4102
    :cond_87
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown type of array: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/util/DualPivotQuicksort$Merger;->dst:Ljava/lang/Object;

    .line 4103
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

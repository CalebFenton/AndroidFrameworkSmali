.class final Ljava/util/DualPivotQuicksort$RunMerger;
.super Ljava/util/concurrent/RecursiveTask;
.source "DualPivotQuicksort.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/DualPivotQuicksort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RunMerger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/RecursiveTask<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x133ef52L


# instance fields
.field private final blacklist a:Ljava/lang/Object;

.field private final blacklist aim:I

.field private final blacklist b:Ljava/lang/Object;

.field private final blacklist hi:I

.field private final blacklist lo:I

.field private final blacklist offset:I

.field private final blacklist run:[I


# direct methods
.method static bridge synthetic blacklist -$$Nest$mforkMe(Ljava/util/DualPivotQuicksort$RunMerger;)Ljava/util/DualPivotQuicksort$RunMerger;
    .registers 1

    invoke-direct {p0}, Ljava/util/DualPivotQuicksort$RunMerger;->forkMe()Ljava/util/DualPivotQuicksort$RunMerger;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetDestination(Ljava/util/DualPivotQuicksort$RunMerger;)Ljava/lang/Object;
    .registers 1

    invoke-direct {p0}, Ljava/util/DualPivotQuicksort$RunMerger;->getDestination()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>(Ljava/lang/Object;Ljava/lang/Object;II[III)V
    .registers 8
    .param p1, "a"    # Ljava/lang/Object;
    .param p2, "b"    # Ljava/lang/Object;
    .param p3, "offset"    # I
    .param p4, "aim"    # I
    .param p5, "run"    # [I
    .param p6, "lo"    # I
    .param p7, "hi"    # I

    .line 4126
    invoke-direct {p0}, Ljava/util/concurrent/RecursiveTask;-><init>()V

    .line 4127
    iput-object p1, p0, Ljava/util/DualPivotQuicksort$RunMerger;->a:Ljava/lang/Object;

    .line 4128
    iput-object p2, p0, Ljava/util/DualPivotQuicksort$RunMerger;->b:Ljava/lang/Object;

    .line 4129
    iput p3, p0, Ljava/util/DualPivotQuicksort$RunMerger;->offset:I

    .line 4130
    iput p4, p0, Ljava/util/DualPivotQuicksort$RunMerger;->aim:I

    .line 4131
    iput-object p5, p0, Ljava/util/DualPivotQuicksort$RunMerger;->run:[I

    .line 4132
    iput p6, p0, Ljava/util/DualPivotQuicksort$RunMerger;->lo:I

    .line 4133
    iput p7, p0, Ljava/util/DualPivotQuicksort$RunMerger;->hi:I

    .line 4134
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/Object;Ljava/lang/Object;II[IIILjava/util/DualPivotQuicksort-IA;)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Ljava/util/DualPivotQuicksort$RunMerger;-><init>(Ljava/lang/Object;Ljava/lang/Object;II[III)V

    return-void
.end method

.method private blacklist forkMe()Ljava/util/DualPivotQuicksort$RunMerger;
    .registers 1

    .line 4155
    invoke-virtual {p0}, Ljava/util/DualPivotQuicksort$RunMerger;->fork()Ljava/util/concurrent/ForkJoinTask;

    .line 4156
    return-object p0
.end method

.method private blacklist getDestination()Ljava/lang/Object;
    .registers 2

    .line 4160
    invoke-virtual {p0}, Ljava/util/DualPivotQuicksort$RunMerger;->join()Ljava/lang/Object;

    .line 4161
    invoke-virtual {p0}, Ljava/util/DualPivotQuicksort$RunMerger;->getRawResult()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final whitelist test-api compute()Ljava/lang/Object;
    .registers 10

    .line 4138
    iget-object v0, p0, Ljava/util/DualPivotQuicksort$RunMerger;->a:Ljava/lang/Object;

    instance-of v0, v0, [I

    if-eqz v0, :cond_20

    .line 4139
    iget-object v0, p0, Ljava/util/DualPivotQuicksort$RunMerger;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, [I

    iget-object v0, p0, Ljava/util/DualPivotQuicksort$RunMerger;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, [I

    iget v3, p0, Ljava/util/DualPivotQuicksort$RunMerger;->offset:I

    iget v4, p0, Ljava/util/DualPivotQuicksort$RunMerger;->aim:I

    iget-object v6, p0, Ljava/util/DualPivotQuicksort$RunMerger;->run:[I

    iget v7, p0, Ljava/util/DualPivotQuicksort$RunMerger;->lo:I

    iget v8, p0, Ljava/util/DualPivotQuicksort$RunMerger;->hi:I

    const/4 v5, 0x1

    invoke-static/range {v1 .. v8}, Ljava/util/DualPivotQuicksort;->-$$Nest$smmergeRuns([I[IIIZ[III)[I

    move-result-object v0

    return-object v0

    .line 4141
    :cond_20
    iget-object v0, p0, Ljava/util/DualPivotQuicksort$RunMerger;->a:Ljava/lang/Object;

    instance-of v0, v0, [J

    if-eqz v0, :cond_40

    .line 4142
    iget-object v0, p0, Ljava/util/DualPivotQuicksort$RunMerger;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, [J

    iget-object v0, p0, Ljava/util/DualPivotQuicksort$RunMerger;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, [J

    iget v3, p0, Ljava/util/DualPivotQuicksort$RunMerger;->offset:I

    iget v4, p0, Ljava/util/DualPivotQuicksort$RunMerger;->aim:I

    iget-object v6, p0, Ljava/util/DualPivotQuicksort$RunMerger;->run:[I

    iget v7, p0, Ljava/util/DualPivotQuicksort$RunMerger;->lo:I

    iget v8, p0, Ljava/util/DualPivotQuicksort$RunMerger;->hi:I

    const/4 v5, 0x1

    invoke-static/range {v1 .. v8}, Ljava/util/DualPivotQuicksort;->-$$Nest$smmergeRuns([J[JIIZ[III)[J

    move-result-object v0

    return-object v0

    .line 4144
    :cond_40
    iget-object v0, p0, Ljava/util/DualPivotQuicksort$RunMerger;->a:Ljava/lang/Object;

    instance-of v0, v0, [F

    if-eqz v0, :cond_60

    .line 4145
    iget-object v0, p0, Ljava/util/DualPivotQuicksort$RunMerger;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, [F

    iget-object v0, p0, Ljava/util/DualPivotQuicksort$RunMerger;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, [F

    iget v3, p0, Ljava/util/DualPivotQuicksort$RunMerger;->offset:I

    iget v4, p0, Ljava/util/DualPivotQuicksort$RunMerger;->aim:I

    iget-object v6, p0, Ljava/util/DualPivotQuicksort$RunMerger;->run:[I

    iget v7, p0, Ljava/util/DualPivotQuicksort$RunMerger;->lo:I

    iget v8, p0, Ljava/util/DualPivotQuicksort$RunMerger;->hi:I

    const/4 v5, 0x1

    invoke-static/range {v1 .. v8}, Ljava/util/DualPivotQuicksort;->-$$Nest$smmergeRuns([F[FIIZ[III)[F

    move-result-object v0

    return-object v0

    .line 4147
    :cond_60
    iget-object v0, p0, Ljava/util/DualPivotQuicksort$RunMerger;->a:Ljava/lang/Object;

    instance-of v0, v0, [D

    if-eqz v0, :cond_80

    .line 4148
    iget-object v0, p0, Ljava/util/DualPivotQuicksort$RunMerger;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, [D

    iget-object v0, p0, Ljava/util/DualPivotQuicksort$RunMerger;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, [D

    iget v3, p0, Ljava/util/DualPivotQuicksort$RunMerger;->offset:I

    iget v4, p0, Ljava/util/DualPivotQuicksort$RunMerger;->aim:I

    iget-object v6, p0, Ljava/util/DualPivotQuicksort$RunMerger;->run:[I

    iget v7, p0, Ljava/util/DualPivotQuicksort$RunMerger;->lo:I

    iget v8, p0, Ljava/util/DualPivotQuicksort$RunMerger;->hi:I

    const/4 v5, 0x1

    invoke-static/range {v1 .. v8}, Ljava/util/DualPivotQuicksort;->-$$Nest$smmergeRuns([D[DIIZ[III)[D

    move-result-object v0

    return-object v0

    .line 4150
    :cond_80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type of array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/util/DualPivotQuicksort$RunMerger;->a:Ljava/lang/Object;

    .line 4151
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

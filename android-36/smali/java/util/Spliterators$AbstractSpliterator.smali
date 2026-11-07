.class public abstract Ljava/util/Spliterators$AbstractSpliterator;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Spliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractSpliterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Spliterators$AbstractSpliterator$HoldingConsumer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final greylist-max-o BATCH_UNIT:I = 0x400

.field static final greylist-max-o MAX_BATCH:I = 0x2000000


# instance fields
.field private greylist-max-o batch:I

.field private final greylist-max-o characteristics:I

.field private greylist-max-o est:J


# direct methods
.method protected constructor whitelist test-api <init>(JI)V
    .registers 5
    .param p1, "est"    # J
    .param p3, "additionalCharacteristics"    # I

    .line 1401
    .local p0, "this":Ljava/util/Spliterators$AbstractSpliterator;, "Ljava/util/Spliterators$AbstractSpliterator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1402
    iput-wide p1, p0, Ljava/util/Spliterators$AbstractSpliterator;->est:J

    .line 1403
    and-int/lit8 v0, p3, 0x40

    if-eqz v0, :cond_c

    .line 1404
    or-int/lit16 v0, p3, 0x4000

    goto :goto_d

    .line 1405
    :cond_c
    move v0, p3

    :goto_d
    iput v0, p0, Ljava/util/Spliterators$AbstractSpliterator;->characteristics:I

    .line 1406
    return-void
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 2

    .line 1480
    .local p0, "this":Ljava/util/Spliterators$AbstractSpliterator;, "Ljava/util/Spliterators$AbstractSpliterator<TT;>;"
    iget v0, p0, Ljava/util/Spliterators$AbstractSpliterator;->characteristics:I

    return v0
.end method

.method public whitelist test-api estimateSize()J
    .registers 3

    .line 1468
    .local p0, "this":Ljava/util/Spliterators$AbstractSpliterator;, "Ljava/util/Spliterators$AbstractSpliterator<TT;>;"
    iget-wide v0, p0, Ljava/util/Spliterators$AbstractSpliterator;->est:J

    return-wide v0
.end method

.method public whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 1437
    .local p0, "this":Ljava/util/Spliterators$AbstractSpliterator;, "Ljava/util/Spliterators$AbstractSpliterator<TT;>;"
    new-instance v0, Ljava/util/Spliterators$AbstractSpliterator$HoldingConsumer;

    invoke-direct {v0}, Ljava/util/Spliterators$AbstractSpliterator$HoldingConsumer;-><init>()V

    .line 1438
    .local v0, "holder":Ljava/util/Spliterators$AbstractSpliterator$HoldingConsumer;, "Ljava/util/Spliterators$AbstractSpliterator$HoldingConsumer<TT;>;"
    iget-wide v1, p0, Ljava/util/Spliterators$AbstractSpliterator;->est:J

    .line 1439
    .local v1, "s":J
    const-wide/16 v3, 0x1

    cmp-long v3, v1, v3

    if-lez v3, :cond_62

    invoke-virtual {p0, v0}, Ljava/util/Spliterators$AbstractSpliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 1440
    iget v3, p0, Ljava/util/Spliterators$AbstractSpliterator;->batch:I

    add-int/lit16 v3, v3, 0x400

    .line 1441
    .local v3, "n":I
    int-to-long v4, v3

    cmp-long v4, v4, v1

    if-lez v4, :cond_1d

    .line 1442
    long-to-int v3, v1

    .line 1443
    :cond_1d
    const/high16 v4, 0x2000000

    if-le v3, v4, :cond_23

    .line 1444
    const/high16 v3, 0x2000000

    .line 1445
    :cond_23
    new-array v5, v3, [Ljava/lang/Object;

    .line 1446
    .local v5, "a":[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 1447
    .local v4, "j":I
    :goto_26
    iget-object v6, v0, Ljava/util/Spliterators$AbstractSpliterator$HoldingConsumer;->value:Ljava/lang/Object;

    aput-object v6, v5, v4

    add-int/lit8 v7, v4, 0x1

    .end local v4    # "j":I
    .local v7, "j":I
    if-ge v7, v3, :cond_37

    invoke-virtual {p0, v0}, Ljava/util/Spliterators$AbstractSpliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v4

    if-nez v4, :cond_35

    goto :goto_37

    :cond_35
    move v4, v7

    goto :goto_26

    .line 1448
    :cond_37
    :goto_37
    iput v7, p0, Ljava/util/Spliterators$AbstractSpliterator;->batch:I

    .line 1449
    iget-wide v8, p0, Ljava/util/Spliterators$AbstractSpliterator;->est:J

    const-wide v10, 0x7fffffffffffffffL

    cmp-long v4, v8, v10

    if-eqz v4, :cond_53

    .line 1450
    iget-wide v8, p0, Ljava/util/Spliterators$AbstractSpliterator;->est:J

    int-to-long v10, v7

    sub-long/2addr v8, v10

    iput-wide v8, p0, Ljava/util/Spliterators$AbstractSpliterator;->est:J

    .line 1451
    new-instance v4, Ljava/util/Spliterators$ArraySpliterator;

    const/4 v6, 0x0

    iget v8, p0, Ljava/util/Spliterators$AbstractSpliterator;->characteristics:I

    invoke-direct {v4, v5, v6, v7, v8}, Ljava/util/Spliterators$ArraySpliterator;-><init>([Ljava/lang/Object;III)V

    return-object v4

    .line 1453
    :cond_53
    new-instance v4, Ljava/util/Spliterators$ArraySpliterator;

    iget v8, p0, Ljava/util/Spliterators$AbstractSpliterator;->characteristics:I

    const-wide v9, 0x3fffffffffffffffL    # 1.9999999999999998

    const/4 v11, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v4 .. v11}, Ljava/util/Spliterators$ArraySpliterator;-><init>([Ljava/lang/Object;IIIJLjava/util/Spliterators-IA;)V

    return-object v4

    .line 1455
    .end local v3    # "n":I
    .end local v5    # "a":[Ljava/lang/Object;
    .end local v7    # "j":I
    :cond_62
    const/4 v3, 0x0

    return-object v3
.end method

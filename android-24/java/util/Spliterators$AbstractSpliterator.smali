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
        "Ljava/util/Spliterator",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final BATCH_UNIT:I = 0x400

.field static final MAX_BATCH:I = 0x2000000


# instance fields
.field private batch:I

.field private final characteristics:I

.field private est:J


# direct methods
.method protected constructor <init>(JI)V
    .locals 1
    .param p1, "est"    # J
    .param p3, "additionalCharacteristics"    # I

    #@0
    .prologue
    .line 1273
    .local p0, "this":Ljava/util/Spliterators$AbstractSpliterator;, "Ljava/util/Spliterators$AbstractSpliterator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1274
    iput-wide p1, p0, Ljava/util/Spliterators$AbstractSpliterator;->est:J

    #@5
    .line 1275
    and-int/lit8 v0, p3, 0x40

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1276
    or-int/lit16 p3, p3, 0x4000

    #@b
    .line 1275
    .end local p3    # "additionalCharacteristics":I
    :cond_0
    iput p3, p0, Ljava/util/Spliterators$AbstractSpliterator;->characteristics:I

    #@d
    .line 1273
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    #@0
    .prologue
    .line 1350
    .local p0, "this":Ljava/util/Spliterators$AbstractSpliterator;, "Ljava/util/Spliterators$AbstractSpliterator<TT;>;"
    iget v0, p0, Ljava/util/Spliterators$AbstractSpliterator;->characteristics:I

    #@2
    return v0
.end method

.method public estimateSize()J
    .locals 2

    #@0
    .prologue
    .line 1338
    .local p0, "this":Ljava/util/Spliterators$AbstractSpliterator;, "Ljava/util/Spliterators$AbstractSpliterator<TT;>;"
    iget-wide v0, p0, Ljava/util/Spliterators$AbstractSpliterator;->est:J

    #@2
    return-wide v0
.end method

.method public trySplit()Ljava/util/Spliterator;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1309
    .local p0, "this":Ljava/util/Spliterators$AbstractSpliterator;, "Ljava/util/Spliterators$AbstractSpliterator<TT;>;"
    new-instance v1, Ljava/util/Spliterators$AbstractSpliterator$HoldingConsumer;

    #@2
    invoke-direct {v1}, Ljava/util/Spliterators$AbstractSpliterator$HoldingConsumer;-><init>()V

    #@5
    .line 1310
    .local v1, "holder":Ljava/util/Spliterators$AbstractSpliterator$HoldingConsumer;, "Ljava/util/Spliterators$AbstractSpliterator$HoldingConsumer<TT;>;"
    iget-wide v4, p0, Ljava/util/Spliterators$AbstractSpliterator;->est:J

    #@7
    .line 1311
    .local v4, "s":J
    const-wide/16 v6, 0x1

    #@9
    cmp-long v6, v4, v6

    #@b
    if-lez v6, :cond_5

    #@d
    invoke-virtual {p0, v1}, Ljava/util/Spliterators$AbstractSpliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    #@10
    move-result v6

    #@11
    if-eqz v6, :cond_5

    #@13
    .line 1312
    iget v6, p0, Ljava/util/Spliterators$AbstractSpliterator;->batch:I

    #@15
    add-int/lit16 v3, v6, 0x400

    #@17
    .line 1313
    .local v3, "n":I
    int-to-long v6, v3

    #@18
    cmp-long v6, v6, v4

    #@1a
    if-lez v6, :cond_0

    #@1c
    .line 1314
    long-to-int v3, v4

    #@1d
    .line 1315
    :cond_0
    const/high16 v6, 0x2000000

    #@1f
    if-le v3, v6, :cond_1

    #@21
    .line 1316
    const/high16 v3, 0x2000000

    #@23
    .line 1317
    :cond_1
    new-array v0, v3, [Ljava/lang/Object;

    #@25
    .line 1318
    .local v0, "a":[Ljava/lang/Object;
    const/4 v2, 0x0

    #@26
    .line 1319
    .local v2, "j":I
    :cond_2
    iget-object v6, v1, Ljava/util/Spliterators$AbstractSpliterator$HoldingConsumer;->value:Ljava/lang/Object;

    #@28
    aput-object v6, v0, v2

    #@2a
    add-int/lit8 v2, v2, 0x1

    #@2c
    if-ge v2, v3, :cond_3

    #@2e
    invoke-virtual {p0, v1}, Ljava/util/Spliterators$AbstractSpliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    #@31
    move-result v6

    #@32
    if-nez v6, :cond_2

    #@34
    .line 1320
    :cond_3
    iput v2, p0, Ljava/util/Spliterators$AbstractSpliterator;->batch:I

    #@36
    .line 1321
    iget-wide v6, p0, Ljava/util/Spliterators$AbstractSpliterator;->est:J

    #@38
    const-wide v8, 0x7fffffffffffffffL

    #@3d
    cmp-long v6, v6, v8

    #@3f
    if-eqz v6, :cond_4

    #@41
    .line 1322
    iget-wide v6, p0, Ljava/util/Spliterators$AbstractSpliterator;->est:J

    #@43
    int-to-long v8, v2

    #@44
    sub-long/2addr v6, v8

    #@45
    iput-wide v6, p0, Ljava/util/Spliterators$AbstractSpliterator;->est:J

    #@47
    .line 1323
    :cond_4
    new-instance v6, Ljava/util/Spliterators$ArraySpliterator;

    #@49
    invoke-virtual {p0}, Ljava/util/Spliterators$AbstractSpliterator;->characteristics()I

    #@4c
    move-result v7

    #@4d
    const/4 v8, 0x0

    #@4e
    invoke-direct {v6, v0, v8, v2, v7}, Ljava/util/Spliterators$ArraySpliterator;-><init>([Ljava/lang/Object;III)V

    #@51
    return-object v6

    #@52
    .line 1325
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v2    # "j":I
    .end local v3    # "n":I
    :cond_5
    const/4 v6, 0x0

    #@53
    return-object v6
.end method

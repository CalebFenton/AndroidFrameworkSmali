.class final Ljava/util/stream/SliceOps;
.super Ljava/lang/Object;
.source "SliceOps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/SliceOps$SliceTask;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$smcalcSize(JJJ)J
    .registers 6

    invoke-static/range {p0 .. p5}, Ljava/util/stream/SliceOps;->calcSize(JJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$smcalcSliceFence(JJ)J
    .registers 4

    invoke-static {p0, p1, p2, p3}, Ljava/util/stream/SliceOps;->calcSliceFence(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$smsliceSpliterator(Ljava/util/stream/StreamShape;Ljava/util/Spliterator;JJ)Ljava/util/Spliterator;
    .registers 6

    invoke-static/range {p0 .. p5}, Ljava/util/stream/SliceOps;->sliceSpliterator(Ljava/util/stream/StreamShape;Ljava/util/Spliterator;JJ)Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 0

    .line 37
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist calcSize(JJJ)J
    .registers 13
    .param p0, "size"    # J
    .param p2, "skip"    # J
    .param p4, "limit"    # J

    .line 53
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_10

    sub-long v1, p0, p2

    const-wide/16 v3, 0x0

    move-wide v5, p4

    .end local p4    # "limit":J
    .local v5, "limit":J
    invoke-static/range {v1 .. v6}, Ljava/lang/Math;->clamp(JJJ)J

    move-result-wide p4

    goto :goto_13

    .end local v5    # "limit":J
    .restart local p4    # "limit":J
    :cond_10
    move-wide v5, p4

    .end local p4    # "limit":J
    .restart local v5    # "limit":J
    const-wide/16 p4, -0x1

    :goto_13
    return-wide p4
.end method

.method private static blacklist calcSliceFence(JJ)J
    .registers 11
    .param p0, "skip"    # J
    .param p2, "limit"    # J

    .line 65
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    const-wide v3, 0x7fffffffffffffffL

    if-ltz v2, :cond_e

    add-long v5, p0, p2

    goto :goto_f

    :cond_e
    move-wide v5, v3

    .line 67
    .local v5, "sliceFence":J
    :goto_f
    cmp-long v0, v5, v0

    if-ltz v0, :cond_14

    move-wide v3, v5

    :cond_14
    return-wide v3
.end method

.method private static blacklist flags(J)I
    .registers 5
    .param p0, "limit"    # J

    .line 575
    sget v0, Ljava/util/stream/StreamOpFlag;->IS_SIZE_ADJUSTING:I

    const-wide/16 v1, -0x1

    cmp-long v1, p0, v1

    if-eqz v1, :cond_b

    sget v1, Ljava/util/stream/StreamOpFlag;->IS_SHORT_CIRCUIT:I

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    or-int/2addr v0, v1

    return v0
.end method

.method public static blacklist makeDouble(Ljava/util/stream/AbstractPipeline;JJ)Ljava/util/stream/DoubleStream;
    .registers 15
    .param p1, "skip"    # J
    .param p3, "limit"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/AbstractPipeline<",
            "*",
            "Ljava/lang/Double;",
            "*>;JJ)",
            "Ljava/util/stream/DoubleStream;"
        }
    .end annotation

    .line 467
    .local p0, "upstream":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Double;*>;"
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_21

    .line 469
    cmp-long v0, p3, v0

    if-ltz v0, :cond_c

    move-wide v6, p3

    goto :goto_12

    :cond_c
    const-wide v0, 0x7fffffffffffffffL

    move-wide v6, v0

    .line 471
    .local v6, "normalizedLimit":J
    :goto_12
    new-instance v0, Ljava/util/stream/SliceOps$4;

    sget-object v2, Ljava/util/stream/StreamShape;->DOUBLE_VALUE:Ljava/util/stream/StreamShape;

    .line 472
    invoke-static {p3, p4}, Ljava/util/stream/SliceOps;->flags(J)I

    move-result v3

    move-object v1, p0

    move-wide v4, p1

    move-wide v8, p3

    invoke-direct/range {v0 .. v9}, Ljava/util/stream/SliceOps$4;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;IJJJ)V

    .line 471
    return-object v0

    .line 468
    .end local v6    # "normalizedLimit":J
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skip must be non-negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist makeInt(Ljava/util/stream/AbstractPipeline;JJ)Ljava/util/stream/IntStream;
    .registers 15
    .param p1, "skip"    # J
    .param p3, "limit"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/AbstractPipeline<",
            "*",
            "Ljava/lang/Integer;",
            "*>;JJ)",
            "Ljava/util/stream/IntStream;"
        }
    .end annotation

    .line 231
    .local p0, "upstream":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Integer;*>;"
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_21

    .line 233
    cmp-long v0, p3, v0

    if-ltz v0, :cond_c

    move-wide v6, p3

    goto :goto_12

    :cond_c
    const-wide v0, 0x7fffffffffffffffL

    move-wide v6, v0

    .line 235
    .local v6, "normalizedLimit":J
    :goto_12
    new-instance v0, Ljava/util/stream/SliceOps$2;

    sget-object v2, Ljava/util/stream/StreamShape;->INT_VALUE:Ljava/util/stream/StreamShape;

    .line 236
    invoke-static {p3, p4}, Ljava/util/stream/SliceOps;->flags(J)I

    move-result v3

    move-object v1, p0

    move-wide v4, p1

    move-wide v8, p3

    invoke-direct/range {v0 .. v9}, Ljava/util/stream/SliceOps$2;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;IJJJ)V

    .line 235
    return-object v0

    .line 232
    .end local v6    # "normalizedLimit":J
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skip must be non-negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist makeLong(Ljava/util/stream/AbstractPipeline;JJ)Ljava/util/stream/LongStream;
    .registers 15
    .param p1, "skip"    # J
    .param p3, "limit"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/AbstractPipeline<",
            "*",
            "Ljava/lang/Long;",
            "*>;JJ)",
            "Ljava/util/stream/LongStream;"
        }
    .end annotation

    .line 349
    .local p0, "upstream":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Long;*>;"
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_21

    .line 351
    cmp-long v0, p3, v0

    if-ltz v0, :cond_c

    move-wide v6, p3

    goto :goto_12

    :cond_c
    const-wide v0, 0x7fffffffffffffffL

    move-wide v6, v0

    .line 353
    .local v6, "normalizedLimit":J
    :goto_12
    new-instance v0, Ljava/util/stream/SliceOps$3;

    sget-object v2, Ljava/util/stream/StreamShape;->LONG_VALUE:Ljava/util/stream/StreamShape;

    .line 354
    invoke-static {p3, p4}, Ljava/util/stream/SliceOps;->flags(J)I

    move-result v3

    move-object v1, p0

    move-wide v4, p1

    move-wide v8, p3

    invoke-direct/range {v0 .. v9}, Ljava/util/stream/SliceOps$3;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;IJJJ)V

    .line 353
    return-object v0

    .line 350
    .end local v6    # "normalizedLimit":J
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skip must be non-negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist makeRef(Ljava/util/stream/AbstractPipeline;JJ)Ljava/util/stream/Stream;
    .registers 15
    .param p1, "skip"    # J
    .param p3, "limit"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/AbstractPipeline<",
            "*TT;*>;JJ)",
            "Ljava/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 106
    .local p0, "upstream":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*TT;*>;"
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_21

    .line 108
    cmp-long v0, p3, v0

    if-ltz v0, :cond_c

    move-wide v6, p3

    goto :goto_12

    :cond_c
    const-wide v0, 0x7fffffffffffffffL

    move-wide v6, v0

    .line 110
    .local v6, "normalizedLimit":J
    :goto_12
    new-instance v0, Ljava/util/stream/SliceOps$1;

    sget-object v2, Ljava/util/stream/StreamShape;->REFERENCE:Ljava/util/stream/StreamShape;

    .line 111
    invoke-static {p3, p4}, Ljava/util/stream/SliceOps;->flags(J)I

    move-result v3

    move-object v1, p0

    move-wide v4, p1

    move-wide v8, p3

    invoke-direct/range {v0 .. v9}, Ljava/util/stream/SliceOps$1;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;IJJJ)V

    .line 110
    return-object v0

    .line 107
    .end local v6    # "normalizedLimit":J
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skip must be non-negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist sliceSpliterator(Ljava/util/stream/StreamShape;Ljava/util/Spliterator;JJ)Ljava/util/Spliterator;
    .registers 12
    .param p0, "shape"    # Ljava/util/stream/StreamShape;
    .param p2, "skip"    # J
    .param p4, "limit"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/StreamShape;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;JJ)",
            "Ljava/util/Spliterator<",
            "TP_IN;>;"
        }
    .end annotation

    .line 78
    .local p1, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    nop

    .line 79
    invoke-static {p2, p3, p4, p5}, Ljava/util/stream/SliceOps;->calcSliceFence(JJ)J

    move-result-wide v4

    .line 81
    .local v4, "sliceFence":J
    sget-object v0, Ljava/util/stream/SliceOps$5;->$SwitchMap$java$util$stream$StreamShape:[I

    invoke-virtual {p0}, Ljava/util/stream/StreamShape;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_48

    move-object v1, p1

    move-wide v2, p2

    .end local p1    # "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .end local p2    # "skip":J
    .local v1, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local v2, "skip":J
    new-instance p1, Ljava/lang/RuntimeException;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 89
    .end local v1    # "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .end local v2    # "skip":J
    .restart local p1    # "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .restart local p2    # "skip":J
    :pswitch_19
    new-instance v0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;

    move-object v1, p1

    check-cast v1, Ljava/util/Spliterator$OfDouble;

    move-wide v2, p2

    .end local p2    # "skip":J
    .restart local v2    # "skip":J
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;-><init>(Ljava/util/Spliterator$OfDouble;JJ)V

    move-object v1, p1

    goto :goto_43

    .line 87
    .end local v2    # "skip":J
    .restart local p2    # "skip":J
    :pswitch_24
    move-wide v2, p2

    .end local p2    # "skip":J
    .restart local v2    # "skip":J
    new-instance v0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfLong;

    move-object v1, p1

    check-cast v1, Ljava/util/Spliterator$OfLong;

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfLong;-><init>(Ljava/util/Spliterator$OfLong;JJ)V

    move-object v1, p1

    goto :goto_43

    .line 85
    .end local v2    # "skip":J
    .restart local p2    # "skip":J
    :pswitch_2f
    move-wide v2, p2

    .end local p2    # "skip":J
    .restart local v2    # "skip":J
    new-instance v0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfInt;

    move-object v1, p1

    check-cast v1, Ljava/util/Spliterator$OfInt;

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfInt;-><init>(Ljava/util/Spliterator$OfInt;JJ)V

    move-object v1, p1

    goto :goto_43

    .line 83
    .end local v2    # "skip":J
    .restart local p2    # "skip":J
    :pswitch_3a
    move-wide v2, p2

    .end local p2    # "skip":J
    .restart local v2    # "skip":J
    new-instance v0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;

    move-object v1, p1

    .end local p1    # "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .restart local v1    # "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;-><init>(Ljava/util/Spliterator;JJ)V

    check-cast v0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;

    .line 89
    :goto_43
    move-object p1, v0

    check-cast p1, Ljava/util/Spliterator;

    .line 91
    .local p1, "sliceSpliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    return-object p1

    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_2f
        :pswitch_24
        :pswitch_19
    .end packed-switch
.end method

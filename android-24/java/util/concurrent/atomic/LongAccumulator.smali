.class public Ljava/util/concurrent/atomic/LongAccumulator;
.super Ljava/util/concurrent/atomic/Striped64;
.source "LongAccumulator.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/atomic/LongAccumulator$SerializationProxy;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6499de12a37d0a3dL


# instance fields
.field private final function:Ljava/util/function/LongBinaryOperator;

.field private final identity:J


# direct methods
.method public constructor <init>(Ljava/util/function/LongBinaryOperator;J)V
    .locals 0
    .param p1, "accumulatorFunction"    # Ljava/util/function/LongBinaryOperator;
    .param p2, "identity"    # J

    #@0
    .prologue
    .line 64
    invoke-direct {p0}, Ljava/util/concurrent/atomic/Striped64;-><init>()V

    #@3
    .line 66
    iput-object p1, p0, Ljava/util/concurrent/atomic/LongAccumulator;->function:Ljava/util/function/LongBinaryOperator;

    #@5
    .line 67
    iput-wide p2, p0, Ljava/util/concurrent/atomic/LongAccumulator;->identity:J

    #@7
    iput-wide p2, p0, Ljava/util/concurrent/atomic/LongAccumulator;->base:J

    #@9
    .line 65
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    #@0
    .prologue
    .line 261
    new-instance v0, Ljava/io/InvalidObjectException;

    #@2
    const-string/jumbo v1, "Proxy required"

    #@5
    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 6

    #@0
    .prologue
    .line 252
    new-instance v0, Ljava/util/concurrent/atomic/LongAccumulator$SerializationProxy;

    #@2
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/LongAccumulator;->get()J

    #@5
    move-result-wide v1

    #@6
    iget-object v3, p0, Ljava/util/concurrent/atomic/LongAccumulator;->function:Ljava/util/function/LongBinaryOperator;

    #@8
    iget-wide v4, p0, Ljava/util/concurrent/atomic/LongAccumulator;->identity:J

    #@a
    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/atomic/LongAccumulator$SerializationProxy;-><init>(JLjava/util/function/LongBinaryOperator;J)V

    #@d
    return-object v0
.end method


# virtual methods
.method public accumulate(J)V
    .locals 11
    .param p1, "x"    # J

    #@0
    .prologue
    .line 77
    iget-object v1, p0, Ljava/util/concurrent/atomic/LongAccumulator;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    #@2
    .local v1, "as":[Ljava/util/concurrent/atomic/Striped64$Cell;
    if-nez v1, :cond_1

    #@4
    .line 78
    iget-object v10, p0, Ljava/util/concurrent/atomic/LongAccumulator;->function:Ljava/util/function/LongBinaryOperator;

    #@6
    iget-wide v2, p0, Ljava/util/concurrent/atomic/LongAccumulator;->base:J

    #@8
    .local v2, "b":J
    invoke-interface {v10, v2, v3, p1, p2}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    #@b
    move-result-wide v6

    #@c
    .local v6, "r":J
    cmp-long v10, v6, v2

    #@e
    if-eqz v10, :cond_0

    #@10
    invoke-virtual {p0, v2, v3, v6, v7}, Ljava/util/concurrent/atomic/Striped64;->casBase(JJ)Z

    #@13
    move-result v10

    #@14
    if-eqz v10, :cond_1

    #@16
    .line 75
    .end local v2    # "b":J
    .end local v6    # "r":J
    :cond_0
    :goto_0
    return-void

    #@17
    .line 79
    :cond_1
    const/4 v5, 0x1

    #@18
    .line 80
    .local v5, "uncontended":Z
    if-eqz v1, :cond_2

    #@1a
    array-length v10, v1

    #@1b
    add-int/lit8 v4, v10, -0x1

    #@1d
    .local v4, "m":I
    if-gez v4, :cond_3

    #@1f
    .line 85
    .end local v4    # "m":I
    .end local v5    # "uncontended":Z
    :cond_2
    iget-object v10, p0, Ljava/util/concurrent/atomic/LongAccumulator;->function:Ljava/util/function/LongBinaryOperator;

    #@21
    invoke-virtual {p0, p1, p2, v10, v5}, Ljava/util/concurrent/atomic/Striped64;->longAccumulate(JLjava/util/function/LongBinaryOperator;Z)V

    #@24
    goto :goto_0

    #@25
    .line 81
    .restart local v4    # "m":I
    .restart local v5    # "uncontended":Z
    :cond_3
    invoke-static {}, Ljava/util/concurrent/atomic/LongAccumulator;->getProbe()I

    #@28
    move-result v10

    #@29
    and-int/2addr v10, v4

    #@2a
    aget-object v0, v1, v10

    #@2c
    .local v0, "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    if-eqz v0, :cond_2

    #@2e
    .line 83
    iget-object v10, p0, Ljava/util/concurrent/atomic/LongAccumulator;->function:Ljava/util/function/LongBinaryOperator;

    #@30
    iget-wide v8, v0, Ljava/util/concurrent/atomic/Striped64$Cell;->value:J

    #@32
    .local v8, "v":J
    invoke-interface {v10, v8, v9, p1, p2}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    #@35
    move-result-wide v6

    #@36
    .restart local v6    # "r":J
    cmp-long v10, v6, v8

    #@38
    if-eqz v10, :cond_4

    #@3a
    .line 84
    invoke-virtual {v0, v8, v9, v6, v7}, Ljava/util/concurrent/atomic/Striped64$Cell;->cas(JJ)Z

    #@3d
    move-result v5

    #@3e
    .line 82
    .local v5, "uncontended":Z
    :goto_1
    if-eqz v5, :cond_2

    #@40
    goto :goto_0

    #@41
    .line 83
    .local v5, "uncontended":Z
    :cond_4
    const/4 v5, 0x1

    #@42
    goto :goto_1
.end method

.method public doubleValue()D
    .locals 2

    #@0
    .prologue
    .line 191
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/LongAccumulator;->get()J

    #@3
    move-result-wide v0

    #@4
    long-to-double v0, v0

    #@5
    return-wide v0
.end method

.method public floatValue()F
    .locals 2

    #@0
    .prologue
    .line 183
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/LongAccumulator;->get()J

    #@3
    move-result-wide v0

    #@4
    long-to-float v0, v0

    #@5
    return v0
.end method

.method public get()J
    .locals 10

    #@0
    .prologue
    .line 99
    iget-object v1, p0, Ljava/util/concurrent/atomic/LongAccumulator;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    #@2
    .line 100
    .local v1, "as":[Ljava/util/concurrent/atomic/Striped64$Cell;
    iget-wide v2, p0, Ljava/util/concurrent/atomic/LongAccumulator;->base:J

    #@4
    .line 101
    .local v2, "result":J
    if-eqz v1, :cond_1

    #@6
    .line 102
    const/4 v4, 0x0

    #@7
    array-length v5, v1

    #@8
    :goto_0
    if-ge v4, v5, :cond_1

    #@a
    aget-object v0, v1, v4

    #@c
    .line 103
    .local v0, "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    if-eqz v0, :cond_0

    #@e
    .line 104
    iget-object v6, p0, Ljava/util/concurrent/atomic/LongAccumulator;->function:Ljava/util/function/LongBinaryOperator;

    #@10
    iget-wide v8, v0, Ljava/util/concurrent/atomic/Striped64$Cell;->value:J

    #@12
    invoke-interface {v6, v2, v3, v8, v9}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    #@15
    move-result-wide v2

    #@16
    .line 102
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@18
    goto :goto_0

    #@19
    .line 106
    .end local v0    # "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    :cond_1
    return-wide v2
.end method

.method public getThenReset()J
    .locals 10

    #@0
    .prologue
    .line 138
    iget-object v1, p0, Ljava/util/concurrent/atomic/LongAccumulator;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    #@2
    .line 139
    .local v1, "as":[Ljava/util/concurrent/atomic/Striped64$Cell;
    iget-wide v2, p0, Ljava/util/concurrent/atomic/LongAccumulator;->base:J

    #@4
    .line 140
    .local v2, "result":J
    iget-wide v6, p0, Ljava/util/concurrent/atomic/LongAccumulator;->identity:J

    #@6
    iput-wide v6, p0, Ljava/util/concurrent/atomic/LongAccumulator;->base:J

    #@8
    .line 141
    if-eqz v1, :cond_1

    #@a
    .line 142
    const/4 v6, 0x0

    #@b
    array-length v7, v1

    #@c
    :goto_0
    if-ge v6, v7, :cond_1

    #@e
    aget-object v0, v1, v6

    #@10
    .line 143
    .local v0, "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    if-eqz v0, :cond_0

    #@12
    .line 144
    iget-wide v4, v0, Ljava/util/concurrent/atomic/Striped64$Cell;->value:J

    #@14
    .line 145
    .local v4, "v":J
    iget-wide v8, p0, Ljava/util/concurrent/atomic/LongAccumulator;->identity:J

    #@16
    invoke-virtual {v0, v8, v9}, Ljava/util/concurrent/atomic/Striped64$Cell;->reset(J)V

    #@19
    .line 146
    iget-object v8, p0, Ljava/util/concurrent/atomic/LongAccumulator;->function:Ljava/util/function/LongBinaryOperator;

    #@1b
    invoke-interface {v8, v2, v3, v4, v5}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    #@1e
    move-result-wide v2

    #@1f
    .line 142
    .end local v4    # "v":J
    :cond_0
    add-int/lit8 v6, v6, 0x1

    #@21
    goto :goto_0

    #@22
    .line 150
    .end local v0    # "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    :cond_1
    return-wide v2
.end method

.method public intValue()I
    .locals 2

    #@0
    .prologue
    .line 175
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/LongAccumulator;->get()J

    #@3
    move-result-wide v0

    #@4
    long-to-int v0, v0

    #@5
    return v0
.end method

.method public longValue()J
    .locals 2

    #@0
    .prologue
    .line 167
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/LongAccumulator;->get()J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public reset()V
    .locals 6

    #@0
    .prologue
    .line 118
    iget-object v1, p0, Ljava/util/concurrent/atomic/LongAccumulator;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    #@2
    .line 119
    .local v1, "as":[Ljava/util/concurrent/atomic/Striped64$Cell;
    iget-wide v2, p0, Ljava/util/concurrent/atomic/LongAccumulator;->identity:J

    #@4
    iput-wide v2, p0, Ljava/util/concurrent/atomic/LongAccumulator;->base:J

    #@6
    .line 120
    if-eqz v1, :cond_1

    #@8
    .line 121
    const/4 v2, 0x0

    #@9
    array-length v3, v1

    #@a
    :goto_0
    if-ge v2, v3, :cond_1

    #@c
    aget-object v0, v1, v2

    #@e
    .line 122
    .local v0, "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    if-eqz v0, :cond_0

    #@10
    .line 123
    iget-wide v4, p0, Ljava/util/concurrent/atomic/LongAccumulator;->identity:J

    #@12
    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/atomic/Striped64$Cell;->reset(J)V

    #@15
    .line 121
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@17
    goto :goto_0

    #@18
    .line 117
    .end local v0    # "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 158
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/LongAccumulator;->get()J

    #@3
    move-result-wide v0

    #@4
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

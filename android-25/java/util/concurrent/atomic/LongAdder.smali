.class public Ljava/util/concurrent/atomic/LongAdder;
.super Ljava/util/concurrent/atomic/Striped64;
.source "LongAdder.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/atomic/LongAdder$SerializationProxy;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6499de12a37d0a3dL


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Ljava/util/concurrent/atomic/Striped64;-><init>()V

    #@3
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
    .line 235
    new-instance v0, Ljava/io/InvalidObjectException;

    #@2
    const-string/jumbo v1, "Proxy required"

    #@5
    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 226
    new-instance v0, Ljava/util/concurrent/atomic/LongAdder$SerializationProxy;

    #@2
    invoke-direct {v0, p0}, Ljava/util/concurrent/atomic/LongAdder$SerializationProxy;-><init>(Ljava/util/concurrent/atomic/LongAdder;)V

    #@5
    return-object v0
.end method


# virtual methods
.method public add(J)V
    .locals 11
    .param p1, "x"    # J

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 58
    iget-object v1, p0, Ljava/util/concurrent/atomic/LongAdder;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    #@3
    .local v1, "as":[Ljava/util/concurrent/atomic/Striped64$Cell;
    if-nez v1, :cond_0

    #@5
    iget-wide v2, p0, Ljava/util/concurrent/atomic/LongAdder;->base:J

    #@7
    .local v2, "b":J
    add-long v8, v2, p1

    #@9
    invoke-virtual {p0, v2, v3, v8, v9}, Ljava/util/concurrent/atomic/Striped64;->casBase(JJ)Z

    #@c
    move-result v8

    #@d
    if-eqz v8, :cond_0

    #@f
    .line 56
    .end local v2    # "b":J
    :goto_0
    return-void

    #@10
    .line 59
    :cond_0
    const/4 v5, 0x1

    #@11
    .line 60
    .local v5, "uncontended":Z
    if-eqz v1, :cond_1

    #@13
    array-length v8, v1

    #@14
    add-int/lit8 v4, v8, -0x1

    #@16
    .local v4, "m":I
    if-gez v4, :cond_2

    #@18
    .line 63
    .end local v4    # "m":I
    .end local v5    # "uncontended":Z
    :cond_1
    invoke-virtual {p0, p1, p2, v10, v5}, Ljava/util/concurrent/atomic/Striped64;->longAccumulate(JLjava/util/function/LongBinaryOperator;Z)V

    #@1b
    goto :goto_0

    #@1c
    .line 61
    .restart local v4    # "m":I
    .restart local v5    # "uncontended":Z
    :cond_2
    invoke-static {}, Ljava/util/concurrent/atomic/LongAdder;->getProbe()I

    #@1f
    move-result v8

    #@20
    and-int/2addr v8, v4

    #@21
    aget-object v0, v1, v8

    #@23
    .local v0, "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    if-eqz v0, :cond_1

    #@25
    .line 62
    iget-wide v6, v0, Ljava/util/concurrent/atomic/Striped64$Cell;->value:J

    #@27
    .local v6, "v":J
    add-long v8, v6, p1

    #@29
    invoke-virtual {v0, v6, v7, v8, v9}, Ljava/util/concurrent/atomic/Striped64$Cell;->cas(JJ)Z

    #@2c
    move-result v5

    #@2d
    .local v5, "uncontended":Z
    if-eqz v5, :cond_1

    #@2f
    goto :goto_0
.end method

.method public decrement()V
    .locals 2

    #@0
    .prologue
    .line 78
    const-wide/16 v0, -0x1

    #@2
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/LongAdder;->add(J)V

    #@5
    .line 77
    return-void
.end method

.method public doubleValue()D
    .locals 2

    #@0
    .prologue
    .line 181
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/LongAdder;->sum()J

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
    .line 173
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/LongAdder;->sum()J

    #@3
    move-result-wide v0

    #@4
    long-to-float v0, v0

    #@5
    return v0
.end method

.method public increment()V
    .locals 2

    #@0
    .prologue
    .line 71
    const-wide/16 v0, 0x1

    #@2
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/LongAdder;->add(J)V

    #@5
    .line 70
    return-void
.end method

.method public intValue()I
    .locals 2

    #@0
    .prologue
    .line 165
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/LongAdder;->sum()J

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
    .line 157
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/LongAdder;->sum()J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public reset()V
    .locals 4

    #@0
    .prologue
    .line 109
    iget-object v1, p0, Ljava/util/concurrent/atomic/LongAdder;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    #@2
    .line 110
    .local v1, "as":[Ljava/util/concurrent/atomic/Striped64$Cell;
    const-wide/16 v2, 0x0

    #@4
    iput-wide v2, p0, Ljava/util/concurrent/atomic/LongAdder;->base:J

    #@6
    .line 111
    if-eqz v1, :cond_1

    #@8
    .line 112
    const/4 v2, 0x0

    #@9
    array-length v3, v1

    #@a
    :goto_0
    if-ge v2, v3, :cond_1

    #@c
    aget-object v0, v1, v2

    #@e
    .line 113
    .local v0, "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    if-eqz v0, :cond_0

    #@10
    .line 114
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/Striped64$Cell;->reset()V

    #@13
    .line 112
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@15
    goto :goto_0

    #@16
    .line 108
    .end local v0    # "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    :cond_1
    return-void
.end method

.method public sum()J
    .locals 8

    #@0
    .prologue
    .line 91
    iget-object v1, p0, Ljava/util/concurrent/atomic/LongAdder;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    #@2
    .line 92
    .local v1, "as":[Ljava/util/concurrent/atomic/Striped64$Cell;
    iget-wide v2, p0, Ljava/util/concurrent/atomic/LongAdder;->base:J

    #@4
    .line 93
    .local v2, "sum":J
    if-eqz v1, :cond_1

    #@6
    .line 94
    const/4 v4, 0x0

    #@7
    array-length v5, v1

    #@8
    :goto_0
    if-ge v4, v5, :cond_1

    #@a
    aget-object v0, v1, v4

    #@c
    .line 95
    .local v0, "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    if-eqz v0, :cond_0

    #@e
    .line 96
    iget-wide v6, v0, Ljava/util/concurrent/atomic/Striped64$Cell;->value:J

    #@10
    add-long/2addr v2, v6

    #@11
    .line 94
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@13
    goto :goto_0

    #@14
    .line 98
    .end local v0    # "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    :cond_1
    return-wide v2
.end method

.method public sumThenReset()J
    .locals 8

    #@0
    .prologue
    .line 129
    iget-object v1, p0, Ljava/util/concurrent/atomic/LongAdder;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    #@2
    .line 130
    .local v1, "as":[Ljava/util/concurrent/atomic/Striped64$Cell;
    iget-wide v2, p0, Ljava/util/concurrent/atomic/LongAdder;->base:J

    #@4
    .line 131
    .local v2, "sum":J
    const-wide/16 v4, 0x0

    #@6
    iput-wide v4, p0, Ljava/util/concurrent/atomic/LongAdder;->base:J

    #@8
    .line 132
    if-eqz v1, :cond_1

    #@a
    .line 133
    const/4 v4, 0x0

    #@b
    array-length v5, v1

    #@c
    :goto_0
    if-ge v4, v5, :cond_1

    #@e
    aget-object v0, v1, v4

    #@10
    .line 134
    .local v0, "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    if-eqz v0, :cond_0

    #@12
    .line 135
    iget-wide v6, v0, Ljava/util/concurrent/atomic/Striped64$Cell;->value:J

    #@14
    add-long/2addr v2, v6

    #@15
    .line 136
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/Striped64$Cell;->reset()V

    #@18
    .line 133
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 140
    .end local v0    # "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    :cond_1
    return-wide v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 148
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/LongAdder;->sum()J

    #@3
    move-result-wide v0

    #@4
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

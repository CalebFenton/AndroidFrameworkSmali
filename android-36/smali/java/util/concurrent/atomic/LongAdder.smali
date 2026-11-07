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
.field private static final whitelist serialVersionUID:J = 0x6499de12a37d0a3dL


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 77
    invoke-direct {p0}, Ljava/util/concurrent/atomic/Striped64;-><init>()V

    .line 78
    return-void
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 262
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Proxy required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private whitelist writeReplace()Ljava/lang/Object;
    .registers 2

    .line 253
    new-instance v0, Ljava/util/concurrent/atomic/LongAdder$SerializationProxy;

    invoke-direct {v0, p0}, Ljava/util/concurrent/atomic/LongAdder$SerializationProxy;-><init>(Ljava/util/concurrent/atomic/LongAdder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api add(J)V
    .registers 15
    .param p1, "x"    # J

    .line 87
    iget-object v0, p0, Ljava/util/concurrent/atomic/LongAdder;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    move-object v1, v0

    .local v1, "cs":[Ljava/util/concurrent/atomic/Striped64$Cell;
    if-nez v0, :cond_13

    iget-wide v2, p0, Ljava/util/concurrent/atomic/LongAdder;->base:J

    move-wide v4, v2

    .local v4, "b":J
    add-long v6, v4, p1

    invoke-virtual {p0, v2, v3, v6, v7}, Ljava/util/concurrent/atomic/LongAdder;->casBase(JJ)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_13

    :cond_11
    move-wide v7, p1

    goto :goto_3e

    .line 88
    .end local v4    # "b":J
    :cond_13
    :goto_13
    invoke-static {}, Ljava/util/concurrent/atomic/LongAdder;->getProbe()I

    move-result v11

    .line 89
    .local v11, "index":I
    const/4 v0, 0x1

    .line 90
    .local v0, "uncontended":Z
    if-eqz v1, :cond_37

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    move v3, v2

    .local v3, "m":I
    if-ltz v2, :cond_37

    and-int v2, v11, v3

    aget-object v2, v1, v2

    move-object v4, v2

    .local v4, "c":Ljava/util/concurrent/atomic/Striped64$Cell;
    if-eqz v2, :cond_37

    iget-wide v5, v4, Ljava/util/concurrent/atomic/Striped64$Cell;->value:J

    move-wide v7, v5

    .local v7, "v":J
    add-long v9, v7, p1

    .line 92
    invoke-virtual {v4, v5, v6, v9, v10}, Ljava/util/concurrent/atomic/Striped64$Cell;->cas(JJ)Z

    move-result v2

    move v0, v2

    if-nez v2, :cond_35

    move v10, v0

    goto :goto_38

    :cond_35
    move-wide v7, p1

    goto :goto_3e

    .line 93
    .end local v3    # "m":I
    .end local v4    # "c":Ljava/util/concurrent/atomic/Striped64$Cell;
    .end local v7    # "v":J
    :cond_37
    move v10, v0

    .end local v0    # "uncontended":Z
    .local v10, "uncontended":Z
    :goto_38
    const/4 v9, 0x0

    move-object v6, p0

    move-wide v7, p1

    .end local p1    # "x":J
    .local v7, "x":J
    invoke-virtual/range {v6 .. v11}, Ljava/util/concurrent/atomic/LongAdder;->longAccumulate(JLjava/util/function/LongBinaryOperator;ZI)V

    .line 95
    .end local v10    # "uncontended":Z
    .end local v11    # "index":I
    :goto_3e
    return-void
.end method

.method public whitelist test-api decrement()V
    .registers 3

    .line 108
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/LongAdder;->add(J)V

    .line 109
    return-void
.end method

.method public whitelist test-api doubleValue()D
    .registers 3

    .line 208
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/LongAdder;->sum()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public whitelist test-api floatValue()F
    .registers 3

    .line 200
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/LongAdder;->sum()J

    move-result-wide v0

    long-to-float v0, v0

    return v0
.end method

.method public whitelist test-api increment()V
    .registers 3

    .line 101
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/LongAdder;->add(J)V

    .line 102
    return-void
.end method

.method public whitelist test-api intValue()I
    .registers 3

    .line 192
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/LongAdder;->sum()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public whitelist test-api longValue()J
    .registers 3

    .line 184
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/LongAdder;->sum()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api reset()V
    .registers 5

    .line 139
    iget-object v0, p0, Ljava/util/concurrent/atomic/LongAdder;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    .line 140
    .local v0, "cs":[Ljava/util/concurrent/atomic/Striped64$Cell;
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Ljava/util/concurrent/atomic/LongAdder;->base:J

    .line 141
    if-eqz v0, :cond_16

    .line 142
    array-length v1, v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    .line 143
    .local v3, "c":Ljava/util/concurrent/atomic/Striped64$Cell;
    if-eqz v3, :cond_13

    .line 144
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/Striped64$Cell;->reset()V

    .line 142
    .end local v3    # "c":Ljava/util/concurrent/atomic/Striped64$Cell;
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 146
    :cond_16
    return-void
.end method

.method public whitelist test-api sum()J
    .registers 9

    .line 121
    iget-object v0, p0, Ljava/util/concurrent/atomic/LongAdder;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    .line 122
    .local v0, "cs":[Ljava/util/concurrent/atomic/Striped64$Cell;
    iget-wide v1, p0, Ljava/util/concurrent/atomic/LongAdder;->base:J

    .line 123
    .local v1, "sum":J
    if-eqz v0, :cond_14

    .line 124
    array-length v3, v0

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v3, :cond_14

    aget-object v5, v0, v4

    .line 125
    .local v5, "c":Ljava/util/concurrent/atomic/Striped64$Cell;
    if-eqz v5, :cond_11

    .line 126
    iget-wide v6, v5, Ljava/util/concurrent/atomic/Striped64$Cell;->value:J

    add-long/2addr v1, v6

    .line 124
    .end local v5    # "c":Ljava/util/concurrent/atomic/Striped64$Cell;
    :cond_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 128
    :cond_14
    return-wide v1
.end method

.method public whitelist test-api sumThenReset()J
    .registers 11

    .line 159
    iget-object v0, p0, Ljava/util/concurrent/atomic/LongAdder;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    .line 160
    .local v0, "cs":[Ljava/util/concurrent/atomic/Striped64$Cell;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/atomic/LongAdder;->getAndSetBase(J)J

    move-result-wide v3

    .line 161
    .local v3, "sum":J
    if-eqz v0, :cond_1a

    .line 162
    array-length v5, v0

    const/4 v6, 0x0

    :goto_c
    if-ge v6, v5, :cond_1a

    aget-object v7, v0, v6

    .line 163
    .local v7, "c":Ljava/util/concurrent/atomic/Striped64$Cell;
    if-eqz v7, :cond_17

    .line 164
    invoke-virtual {v7, v1, v2}, Ljava/util/concurrent/atomic/Striped64$Cell;->getAndSet(J)J

    move-result-wide v8

    add-long/2addr v3, v8

    .line 162
    .end local v7    # "c":Ljava/util/concurrent/atomic/Striped64$Cell;
    :cond_17
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 167
    :cond_1a
    return-wide v3
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 175
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/LongAdder;->sum()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

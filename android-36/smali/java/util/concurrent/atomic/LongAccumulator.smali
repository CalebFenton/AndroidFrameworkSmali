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
.field private static final whitelist serialVersionUID:J = 0x6499de12a37d0a3dL


# instance fields
.field private final greylist-max-o function:Ljava/util/function/LongBinaryOperator;

.field private final greylist-max-o identity:J


# direct methods
.method public constructor whitelist test-api <init>(Ljava/util/function/LongBinaryOperator;J)V
    .registers 4
    .param p1, "accumulatorFunction"    # Ljava/util/function/LongBinaryOperator;
    .param p2, "identity"    # J

    .line 96
    invoke-direct {p0}, Ljava/util/concurrent/atomic/Striped64;-><init>()V

    .line 97
    iput-object p1, p0, Ljava/util/concurrent/atomic/LongAccumulator;->function:Ljava/util/function/LongBinaryOperator;

    .line 98
    iput-wide p2, p0, Ljava/util/concurrent/atomic/LongAccumulator;->identity:J

    iput-wide p2, p0, Ljava/util/concurrent/atomic/LongAccumulator;->base:J

    .line 99
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

    .line 294
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Proxy required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private whitelist writeReplace()Ljava/lang/Object;
    .registers 7

    .line 285
    new-instance v0, Ljava/util/concurrent/atomic/LongAccumulator$SerializationProxy;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/LongAccumulator;->get()J

    move-result-wide v1

    iget-object v3, p0, Ljava/util/concurrent/atomic/LongAccumulator;->function:Ljava/util/function/LongBinaryOperator;

    iget-wide v4, p0, Ljava/util/concurrent/atomic/LongAccumulator;->identity:J

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/atomic/LongAccumulator$SerializationProxy;-><init>(JLjava/util/function/LongBinaryOperator;J)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api accumulate(J)V
    .registers 19
    .param p1, "x"    # J

    .line 108
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget-object v3, v0, Ljava/util/concurrent/atomic/LongAccumulator;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    move-object v6, v3

    .local v6, "cs":[Ljava/util/concurrent/atomic/Striped64$Cell;
    if-nez v3, :cond_1d

    iget-object v3, v0, Ljava/util/concurrent/atomic/LongAccumulator;->function:Ljava/util/function/LongBinaryOperator;

    iget-wide v4, v0, Ljava/util/concurrent/atomic/LongAccumulator;->base:J

    move-wide v7, v4

    .line 109
    .local v7, "b":J
    invoke-interface {v3, v4, v5, v1, v2}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v3

    move-wide v9, v3

    .local v9, "r":J
    cmp-long v3, v3, v7

    if-eqz v3, :cond_54

    .line 110
    invoke-virtual {v0, v7, v8, v9, v10}, Ljava/util/concurrent/atomic/LongAccumulator;->casBase(JJ)Z

    move-result v3

    if-nez v3, :cond_54

    .line 111
    .end local v7    # "b":J
    .end local v9    # "r":J
    :cond_1d
    invoke-static {}, Ljava/util/concurrent/atomic/LongAccumulator;->getProbe()I

    move-result v5

    .line 112
    .local v5, "index":I
    const/4 v3, 0x1

    .line 113
    .local v3, "uncontended":Z
    if-eqz v6, :cond_4e

    array-length v4, v6

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    move v8, v4

    .local v8, "m":I
    if-ltz v4, :cond_4e

    and-int v4, v5, v8

    aget-object v4, v6, v4

    move-object v9, v4

    .local v9, "c":Ljava/util/concurrent/atomic/Striped64$Cell;
    if-eqz v4, :cond_4e

    iget-object v4, v0, Ljava/util/concurrent/atomic/LongAccumulator;->function:Ljava/util/function/LongBinaryOperator;

    iget-wide v10, v9, Ljava/util/concurrent/atomic/Striped64$Cell;->value:J

    move-wide v12, v10

    .line 117
    .local v12, "v":J
    invoke-interface {v4, v10, v11, v1, v2}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v10

    move-wide v14, v10

    .local v14, "r":J
    cmp-long v4, v10, v12

    if-eqz v4, :cond_48

    .line 118
    invoke-virtual {v9, v12, v13, v14, v15}, Ljava/util/concurrent/atomic/Striped64$Cell;->cas(JJ)Z

    move-result v4

    if-eqz v4, :cond_46

    goto :goto_48

    :cond_46
    const/4 v7, 0x0

    goto :goto_49

    :cond_48
    :goto_48
    nop

    :goto_49
    move v3, v7

    if-nez v7, :cond_54

    move v4, v3

    goto :goto_4f

    .line 119
    .end local v8    # "m":I
    .end local v9    # "c":Ljava/util/concurrent/atomic/Striped64$Cell;
    .end local v12    # "v":J
    .end local v14    # "r":J
    :cond_4e
    move v4, v3

    .end local v3    # "uncontended":Z
    .local v4, "uncontended":Z
    :goto_4f
    iget-object v3, v0, Ljava/util/concurrent/atomic/LongAccumulator;->function:Ljava/util/function/LongBinaryOperator;

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/LongAccumulator;->longAccumulate(JLjava/util/function/LongBinaryOperator;ZI)V

    .line 121
    .end local v4    # "uncontended":Z
    .end local v5    # "index":I
    :cond_54
    return-void
.end method

.method public whitelist test-api doubleValue()D
    .registers 3

    .line 223
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/LongAccumulator;->get()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public whitelist test-api floatValue()F
    .registers 3

    .line 215
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/LongAccumulator;->get()J

    move-result-wide v0

    long-to-float v0, v0

    return v0
.end method

.method public whitelist test-api get()J
    .registers 10

    .line 133
    iget-object v0, p0, Ljava/util/concurrent/atomic/LongAccumulator;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    .line 134
    .local v0, "cs":[Ljava/util/concurrent/atomic/Striped64$Cell;
    iget-wide v1, p0, Ljava/util/concurrent/atomic/LongAccumulator;->base:J

    .line 135
    .local v1, "result":J
    if-eqz v0, :cond_19

    .line 136
    array-length v3, v0

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v3, :cond_19

    aget-object v5, v0, v4

    .line 137
    .local v5, "c":Ljava/util/concurrent/atomic/Striped64$Cell;
    if-eqz v5, :cond_16

    .line 138
    iget-object v6, p0, Ljava/util/concurrent/atomic/LongAccumulator;->function:Ljava/util/function/LongBinaryOperator;

    iget-wide v7, v5, Ljava/util/concurrent/atomic/Striped64$Cell;->value:J

    invoke-interface {v6, v1, v2, v7, v8}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v1

    .line 136
    .end local v5    # "c":Ljava/util/concurrent/atomic/Striped64$Cell;
    :cond_16
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 140
    :cond_19
    return-wide v1
.end method

.method public whitelist test-api getThenReset()J
    .registers 10

    .line 172
    iget-object v0, p0, Ljava/util/concurrent/atomic/LongAccumulator;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    .line 173
    .local v0, "cs":[Ljava/util/concurrent/atomic/Striped64$Cell;
    iget-wide v1, p0, Ljava/util/concurrent/atomic/LongAccumulator;->identity:J

    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/atomic/LongAccumulator;->getAndSetBase(J)J

    move-result-wide v1

    .line 174
    .local v1, "result":J
    if-eqz v0, :cond_21

    .line 175
    array-length v3, v0

    const/4 v4, 0x0

    :goto_c
    if-ge v4, v3, :cond_21

    aget-object v5, v0, v4

    .line 176
    .local v5, "c":Ljava/util/concurrent/atomic/Striped64$Cell;
    if-eqz v5, :cond_1e

    .line 177
    iget-wide v6, p0, Ljava/util/concurrent/atomic/LongAccumulator;->identity:J

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/atomic/Striped64$Cell;->getAndSet(J)J

    move-result-wide v6

    .line 178
    .local v6, "v":J
    iget-object v8, p0, Ljava/util/concurrent/atomic/LongAccumulator;->function:Ljava/util/function/LongBinaryOperator;

    invoke-interface {v8, v1, v2, v6, v7}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v1

    .line 175
    .end local v5    # "c":Ljava/util/concurrent/atomic/Striped64$Cell;
    .end local v6    # "v":J
    :cond_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 182
    :cond_21
    return-wide v1
.end method

.method public whitelist test-api intValue()I
    .registers 3

    .line 207
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/LongAccumulator;->get()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public whitelist test-api longValue()J
    .registers 3

    .line 199
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/LongAccumulator;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api reset()V
    .registers 7

    .line 152
    iget-object v0, p0, Ljava/util/concurrent/atomic/LongAccumulator;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    .line 153
    .local v0, "cs":[Ljava/util/concurrent/atomic/Striped64$Cell;
    iget-wide v1, p0, Ljava/util/concurrent/atomic/LongAccumulator;->identity:J

    iput-wide v1, p0, Ljava/util/concurrent/atomic/LongAccumulator;->base:J

    .line 154
    if-eqz v0, :cond_18

    .line 155
    array-length v1, v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_18

    aget-object v3, v0, v2

    .line 156
    .local v3, "c":Ljava/util/concurrent/atomic/Striped64$Cell;
    if-eqz v3, :cond_15

    .line 157
    iget-wide v4, p0, Ljava/util/concurrent/atomic/LongAccumulator;->identity:J

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/Striped64$Cell;->reset(J)V

    .line 155
    .end local v3    # "c":Ljava/util/concurrent/atomic/Striped64$Cell;
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 159
    :cond_18
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 190
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/LongAccumulator;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

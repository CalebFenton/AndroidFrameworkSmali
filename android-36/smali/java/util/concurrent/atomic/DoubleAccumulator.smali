.class public Ljava/util/concurrent/atomic/DoubleAccumulator;
.super Ljava/util/concurrent/atomic/Striped64;
.source "DoubleAccumulator.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/atomic/DoubleAccumulator$SerializationProxy;
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x6499de12a37d0a3dL


# instance fields
.field private final greylist-max-o function:Ljava/util/function/DoubleBinaryOperator;

.field private final greylist-max-o identity:J


# direct methods
.method public constructor whitelist test-api <init>(Ljava/util/function/DoubleBinaryOperator;D)V
    .registers 6
    .param p1, "accumulatorFunction"    # Ljava/util/function/DoubleBinaryOperator;
    .param p2, "identity"    # D

    .line 98
    invoke-direct {p0}, Ljava/util/concurrent/atomic/Striped64;-><init>()V

    .line 99
    iput-object p1, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->function:Ljava/util/function/DoubleBinaryOperator;

    .line 100
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->identity:J

    iput-wide v0, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->base:J

    .line 101
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

    .line 303
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Proxy required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private whitelist writeReplace()Ljava/lang/Object;
    .registers 7

    .line 294
    new-instance v0, Ljava/util/concurrent/atomic/DoubleAccumulator$SerializationProxy;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/DoubleAccumulator;->get()D

    move-result-wide v1

    iget-object v3, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->function:Ljava/util/function/DoubleBinaryOperator;

    iget-wide v4, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->identity:J

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/atomic/DoubleAccumulator$SerializationProxy;-><init>(DLjava/util/function/DoubleBinaryOperator;J)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api accumulate(D)V
    .registers 19
    .param p1, "x"    # D

    .line 110
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget-object v3, v0, Ljava/util/concurrent/atomic/DoubleAccumulator;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    move-object v6, v3

    .local v6, "cs":[Ljava/util/concurrent/atomic/Striped64$Cell;
    if-nez v3, :cond_25

    iget-object v3, v0, Ljava/util/concurrent/atomic/DoubleAccumulator;->function:Ljava/util/function/DoubleBinaryOperator;

    iget-wide v4, v0, Ljava/util/concurrent/atomic/DoubleAccumulator;->base:J

    move-wide v7, v4

    .line 112
    .local v7, "b":J
    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    invoke-interface {v3, v4, v5, v1, v2}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v3

    move-wide v9, v3

    .local v9, "r":J
    cmp-long v3, v3, v7

    if-eqz v3, :cond_64

    .line 113
    invoke-virtual {v0, v7, v8, v9, v10}, Ljava/util/concurrent/atomic/DoubleAccumulator;->casBase(JJ)Z

    move-result v3

    if-nez v3, :cond_64

    .line 114
    .end local v7    # "b":J
    .end local v9    # "r":J
    :cond_25
    invoke-static {}, Ljava/util/concurrent/atomic/DoubleAccumulator;->getProbe()I

    move-result v5

    .line 115
    .local v5, "index":I
    const/4 v3, 0x1

    .line 116
    .local v3, "uncontended":Z
    if-eqz v6, :cond_5e

    array-length v4, v6

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    move v8, v4

    .local v8, "m":I
    if-ltz v4, :cond_5e

    and-int v4, v5, v8

    aget-object v4, v6, v4

    move-object v9, v4

    .local v9, "c":Ljava/util/concurrent/atomic/Striped64$Cell;
    if-eqz v4, :cond_5e

    iget-object v4, v0, Ljava/util/concurrent/atomic/DoubleAccumulator;->function:Ljava/util/function/DoubleBinaryOperator;

    iget-wide v10, v9, Ljava/util/concurrent/atomic/Striped64$Cell;->value:J

    move-wide v12, v10

    .line 122
    .local v12, "v":J
    invoke-static {v10, v11}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v10

    invoke-interface {v4, v10, v11, v1, v2}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v10

    .line 121
    invoke-static {v10, v11}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v10

    move-wide v14, v10

    .local v14, "r":J
    cmp-long v4, v10, v12

    if-eqz v4, :cond_58

    .line 123
    invoke-virtual {v9, v12, v13, v14, v15}, Ljava/util/concurrent/atomic/Striped64$Cell;->cas(JJ)Z

    move-result v4

    if-eqz v4, :cond_56

    goto :goto_58

    :cond_56
    const/4 v7, 0x0

    goto :goto_59

    :cond_58
    :goto_58
    nop

    :goto_59
    move v3, v7

    if-nez v7, :cond_64

    move v4, v3

    goto :goto_5f

    .line 124
    .end local v8    # "m":I
    .end local v9    # "c":Ljava/util/concurrent/atomic/Striped64$Cell;
    .end local v12    # "v":J
    .end local v14    # "r":J
    :cond_5e
    move v4, v3

    .end local v3    # "uncontended":Z
    .local v4, "uncontended":Z
    :goto_5f
    iget-object v3, v0, Ljava/util/concurrent/atomic/DoubleAccumulator;->function:Ljava/util/function/DoubleBinaryOperator;

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/DoubleAccumulator;->doubleAccumulate(DLjava/util/function/DoubleBinaryOperator;ZI)V

    .line 126
    .end local v4    # "uncontended":Z
    .end local v5    # "index":I
    :cond_64
    return-void
.end method

.method public whitelist test-api doubleValue()D
    .registers 3

    .line 205
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/DoubleAccumulator;->get()D

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api floatValue()F
    .registers 3

    .line 229
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/DoubleAccumulator;->get()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public whitelist test-api get()D
    .registers 10

    .line 138
    iget-object v0, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    .line 139
    .local v0, "cs":[Ljava/util/concurrent/atomic/Striped64$Cell;
    iget-wide v1, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->base:J

    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v1

    .line 140
    .local v1, "result":D
    if-eqz v0, :cond_21

    .line 141
    array-length v3, v0

    const/4 v4, 0x0

    :goto_c
    if-ge v4, v3, :cond_21

    aget-object v5, v0, v4

    .line 142
    .local v5, "c":Ljava/util/concurrent/atomic/Striped64$Cell;
    if-eqz v5, :cond_1e

    .line 143
    iget-object v6, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->function:Ljava/util/function/DoubleBinaryOperator;

    iget-wide v7, v5, Ljava/util/concurrent/atomic/Striped64$Cell;->value:J

    .line 144
    invoke-static {v7, v8}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v7

    invoke-interface {v6, v1, v2, v7, v8}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v1

    .line 141
    .end local v5    # "c":Ljava/util/concurrent/atomic/Striped64$Cell;
    :cond_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 146
    :cond_21
    return-wide v1
.end method

.method public whitelist test-api getThenReset()D
    .registers 10

    .line 178
    iget-object v0, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    .line 179
    .local v0, "cs":[Ljava/util/concurrent/atomic/Striped64$Cell;
    iget-wide v1, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->identity:J

    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/atomic/DoubleAccumulator;->getAndSetBase(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v1

    .line 180
    .local v1, "result":D
    if-eqz v0, :cond_29

    .line 181
    array-length v3, v0

    const/4 v4, 0x0

    :goto_10
    if-ge v4, v3, :cond_29

    aget-object v5, v0, v4

    .line 182
    .local v5, "c":Ljava/util/concurrent/atomic/Striped64$Cell;
    if-eqz v5, :cond_26

    .line 183
    iget-wide v6, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->identity:J

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/atomic/Striped64$Cell;->getAndSet(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v6

    .line 184
    .local v6, "v":D
    iget-object v8, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->function:Ljava/util/function/DoubleBinaryOperator;

    invoke-interface {v8, v1, v2, v6, v7}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v1

    .line 181
    .end local v5    # "c":Ljava/util/concurrent/atomic/Striped64$Cell;
    .end local v6    # "v":D
    :cond_26
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 188
    :cond_29
    return-wide v1
.end method

.method public whitelist test-api intValue()I
    .registers 3

    .line 221
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/DoubleAccumulator;->get()D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public whitelist test-api longValue()J
    .registers 3

    .line 213
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/DoubleAccumulator;->get()D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method

.method public whitelist test-api reset()V
    .registers 7

    .line 158
    iget-object v0, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    .line 159
    .local v0, "cs":[Ljava/util/concurrent/atomic/Striped64$Cell;
    iget-wide v1, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->identity:J

    iput-wide v1, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->base:J

    .line 160
    if-eqz v0, :cond_18

    .line 161
    array-length v1, v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_18

    aget-object v3, v0, v2

    .line 162
    .local v3, "c":Ljava/util/concurrent/atomic/Striped64$Cell;
    if-eqz v3, :cond_15

    .line 163
    iget-wide v4, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->identity:J

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/Striped64$Cell;->reset(J)V

    .line 161
    .end local v3    # "c":Ljava/util/concurrent/atomic/Striped64$Cell;
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 165
    :cond_18
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 196
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/DoubleAccumulator;->get()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

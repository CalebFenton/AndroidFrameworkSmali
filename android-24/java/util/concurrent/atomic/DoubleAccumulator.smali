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
.field private static final serialVersionUID:J = 0x6499de12a37d0a3dL


# instance fields
.field private final function:Ljava/util/function/DoubleBinaryOperator;

.field private final identity:J


# direct methods
.method public constructor <init>(Ljava/util/function/DoubleBinaryOperator;D)V
    .locals 2
    .param p1, "accumulatorFunction"    # Ljava/util/function/DoubleBinaryOperator;
    .param p2, "identity"    # D

    #@0
    .prologue
    .line 62
    invoke-direct {p0}, Ljava/util/concurrent/atomic/Striped64;-><init>()V

    #@3
    .line 64
    iput-object p1, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->function:Ljava/util/function/DoubleBinaryOperator;

    #@5
    .line 65
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@8
    move-result-wide v0

    #@9
    iput-wide v0, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->identity:J

    #@b
    iput-wide v0, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->base:J

    #@d
    .line 63
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
    .line 267
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
    .line 258
    new-instance v0, Ljava/util/concurrent/atomic/DoubleAccumulator$SerializationProxy;

    #@2
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/DoubleAccumulator;->get()D

    #@5
    move-result-wide v1

    #@6
    iget-object v3, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->function:Ljava/util/function/DoubleBinaryOperator;

    #@8
    iget-wide v4, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->identity:J

    #@a
    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/atomic/DoubleAccumulator$SerializationProxy;-><init>(DLjava/util/function/DoubleBinaryOperator;J)V

    #@d
    return-object v0
.end method


# virtual methods
.method public accumulate(D)V
    .locals 19
    .param p1, "x"    # D

    #@0
    .prologue
    .line 75
    move-object/from16 v0, p0

    #@2
    iget-object v5, v0, Ljava/util/concurrent/atomic/DoubleAccumulator;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    #@4
    .local v5, "as":[Ljava/util/concurrent/atomic/Striped64$Cell;
    if-nez v5, :cond_1

    #@6
    .line 77
    move-object/from16 v0, p0

    #@8
    iget-object v14, v0, Ljava/util/concurrent/atomic/DoubleAccumulator;->function:Ljava/util/function/DoubleBinaryOperator;

    #@a
    .line 78
    move-object/from16 v0, p0

    #@c
    iget-wide v6, v0, Ljava/util/concurrent/atomic/DoubleAccumulator;->base:J

    #@e
    .local v6, "b":J
    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@11
    move-result-wide v16

    #@12
    .line 77
    move-wide/from16 v0, v16

    #@14
    move-wide/from16 v2, p1

    #@16
    invoke-interface {v14, v0, v1, v2, v3}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    #@19
    move-result-wide v14

    #@1a
    .line 76
    invoke-static {v14, v15}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@1d
    move-result-wide v10

    #@1e
    .local v10, "r":J
    cmp-long v14, v10, v6

    #@20
    if-eqz v14, :cond_0

    #@22
    .line 78
    move-object/from16 v0, p0

    #@24
    invoke-virtual {v0, v6, v7, v10, v11}, Ljava/util/concurrent/atomic/Striped64;->casBase(JJ)Z

    #@27
    move-result v14

    #@28
    if-eqz v14, :cond_1

    #@2a
    .line 73
    .end local v6    # "b":J
    .end local v10    # "r":J
    :cond_0
    :goto_0
    return-void

    #@2b
    .line 79
    :cond_1
    const/4 v9, 0x1

    #@2c
    .line 80
    .local v9, "uncontended":Z
    if-eqz v5, :cond_2

    #@2e
    array-length v14, v5

    #@2f
    add-int/lit8 v8, v14, -0x1

    #@31
    .local v8, "m":I
    if-gez v8, :cond_3

    #@33
    .line 87
    .end local v8    # "m":I
    .end local v9    # "uncontended":Z
    :cond_2
    move-object/from16 v0, p0

    #@35
    iget-object v14, v0, Ljava/util/concurrent/atomic/DoubleAccumulator;->function:Ljava/util/function/DoubleBinaryOperator;

    #@37
    move-object/from16 v0, p0

    #@39
    move-wide/from16 v1, p1

    #@3b
    invoke-virtual {v0, v1, v2, v14, v9}, Ljava/util/concurrent/atomic/Striped64;->doubleAccumulate(DLjava/util/function/DoubleBinaryOperator;Z)V

    #@3e
    goto :goto_0

    #@3f
    .line 81
    .restart local v8    # "m":I
    .restart local v9    # "uncontended":Z
    :cond_3
    invoke-static {}, Ljava/util/concurrent/atomic/DoubleAccumulator;->getProbe()I

    #@42
    move-result v14

    #@43
    and-int/2addr v14, v8

    #@44
    aget-object v4, v5, v14

    #@46
    .local v4, "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    if-eqz v4, :cond_2

    #@48
    .line 84
    move-object/from16 v0, p0

    #@4a
    iget-object v14, v0, Ljava/util/concurrent/atomic/DoubleAccumulator;->function:Ljava/util/function/DoubleBinaryOperator;

    #@4c
    .line 85
    iget-wide v12, v4, Ljava/util/concurrent/atomic/Striped64$Cell;->value:J

    #@4e
    .local v12, "v":J
    invoke-static {v12, v13}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@51
    move-result-wide v16

    #@52
    .line 84
    move-wide/from16 v0, v16

    #@54
    move-wide/from16 v2, p1

    #@56
    invoke-interface {v14, v0, v1, v2, v3}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    #@59
    move-result-wide v14

    #@5a
    .line 83
    invoke-static {v14, v15}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@5d
    move-result-wide v10

    #@5e
    .restart local v10    # "r":J
    cmp-long v14, v10, v12

    #@60
    if-eqz v14, :cond_4

    #@62
    .line 86
    invoke-virtual {v4, v12, v13, v10, v11}, Ljava/util/concurrent/atomic/Striped64$Cell;->cas(JJ)Z

    #@65
    move-result v9

    #@66
    .line 82
    .local v9, "uncontended":Z
    :goto_1
    if-eqz v9, :cond_2

    #@68
    goto :goto_0

    #@69
    .line 83
    .local v9, "uncontended":Z
    :cond_4
    const/4 v9, 0x1

    #@6a
    goto :goto_1
.end method

.method public doubleValue()D
    .locals 2

    #@0
    .prologue
    .line 170
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/DoubleAccumulator;->get()D

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public floatValue()F
    .locals 2

    #@0
    .prologue
    .line 194
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/DoubleAccumulator;->get()D

    #@3
    move-result-wide v0

    #@4
    double-to-float v0, v0

    #@5
    return v0
.end method

.method public get()D
    .locals 10

    #@0
    .prologue
    .line 101
    iget-object v1, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    #@2
    .line 102
    .local v1, "as":[Ljava/util/concurrent/atomic/Striped64$Cell;
    iget-wide v4, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->base:J

    #@4
    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@7
    move-result-wide v2

    #@8
    .line 103
    .local v2, "result":D
    if-eqz v1, :cond_1

    #@a
    .line 104
    const/4 v4, 0x0

    #@b
    array-length v5, v1

    #@c
    :goto_0
    if-ge v4, v5, :cond_1

    #@e
    aget-object v0, v1, v4

    #@10
    .line 105
    .local v0, "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    if-eqz v0, :cond_0

    #@12
    .line 106
    iget-object v6, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->function:Ljava/util/function/DoubleBinaryOperator;

    #@14
    .line 107
    iget-wide v8, v0, Ljava/util/concurrent/atomic/Striped64$Cell;->value:J

    #@16
    invoke-static {v8, v9}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@19
    move-result-wide v8

    #@1a
    .line 106
    invoke-interface {v6, v2, v3, v8, v9}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    #@1d
    move-result-wide v2

    #@1e
    .line 104
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@20
    goto :goto_0

    #@21
    .line 109
    .end local v0    # "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    :cond_1
    return-wide v2
.end method

.method public getThenReset()D
    .locals 10

    #@0
    .prologue
    .line 141
    iget-object v1, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    #@2
    .line 142
    .local v1, "as":[Ljava/util/concurrent/atomic/Striped64$Cell;
    iget-wide v6, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->base:J

    #@4
    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@7
    move-result-wide v2

    #@8
    .line 143
    .local v2, "result":D
    iget-wide v6, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->identity:J

    #@a
    iput-wide v6, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->base:J

    #@c
    .line 144
    if-eqz v1, :cond_1

    #@e
    .line 145
    const/4 v6, 0x0

    #@f
    array-length v7, v1

    #@10
    :goto_0
    if-ge v6, v7, :cond_1

    #@12
    aget-object v0, v1, v6

    #@14
    .line 146
    .local v0, "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    if-eqz v0, :cond_0

    #@16
    .line 147
    iget-wide v8, v0, Ljava/util/concurrent/atomic/Striped64$Cell;->value:J

    #@18
    invoke-static {v8, v9}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@1b
    move-result-wide v4

    #@1c
    .line 148
    .local v4, "v":D
    iget-wide v8, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->identity:J

    #@1e
    invoke-virtual {v0, v8, v9}, Ljava/util/concurrent/atomic/Striped64$Cell;->reset(J)V

    #@21
    .line 149
    iget-object v8, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->function:Ljava/util/function/DoubleBinaryOperator;

    #@23
    invoke-interface {v8, v2, v3, v4, v5}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    #@26
    move-result-wide v2

    #@27
    .line 145
    .end local v4    # "v":D
    :cond_0
    add-int/lit8 v6, v6, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 153
    .end local v0    # "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    :cond_1
    return-wide v2
.end method

.method public intValue()I
    .locals 2

    #@0
    .prologue
    .line 186
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/DoubleAccumulator;->get()D

    #@3
    move-result-wide v0

    #@4
    double-to-int v0, v0

    #@5
    return v0
.end method

.method public longValue()J
    .locals 2

    #@0
    .prologue
    .line 178
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/DoubleAccumulator;->get()D

    #@3
    move-result-wide v0

    #@4
    double-to-long v0, v0

    #@5
    return-wide v0
.end method

.method public reset()V
    .locals 6

    #@0
    .prologue
    .line 121
    iget-object v1, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    #@2
    .line 122
    .local v1, "as":[Ljava/util/concurrent/atomic/Striped64$Cell;
    iget-wide v2, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->identity:J

    #@4
    iput-wide v2, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->base:J

    #@6
    .line 123
    if-eqz v1, :cond_1

    #@8
    .line 124
    const/4 v2, 0x0

    #@9
    array-length v3, v1

    #@a
    :goto_0
    if-ge v2, v3, :cond_1

    #@c
    aget-object v0, v1, v2

    #@e
    .line 125
    .local v0, "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    if-eqz v0, :cond_0

    #@10
    .line 126
    iget-wide v4, p0, Ljava/util/concurrent/atomic/DoubleAccumulator;->identity:J

    #@12
    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/atomic/Striped64$Cell;->reset(J)V

    #@15
    .line 124
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@17
    goto :goto_0

    #@18
    .line 120
    .end local v0    # "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 161
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/DoubleAccumulator;->get()D

    #@3
    move-result-wide v0

    #@4
    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.class public Ljava/util/concurrent/atomic/DoubleAdder;
.super Ljava/util/concurrent/atomic/Striped64;
.source "DoubleAdder.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/atomic/DoubleAdder$SerializationProxy;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6499de12a37d0a3dL


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 52
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
    .line 234
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
    .line 225
    new-instance v0, Ljava/util/concurrent/atomic/DoubleAdder$SerializationProxy;

    #@2
    invoke-direct {v0, p0}, Ljava/util/concurrent/atomic/DoubleAdder$SerializationProxy;-><init>(Ljava/util/concurrent/atomic/DoubleAdder;)V

    #@5
    return-object v0
.end method


# virtual methods
.method public add(D)V
    .locals 11
    .param p1, "x"    # D

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 62
    iget-object v1, p0, Ljava/util/concurrent/atomic/DoubleAdder;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    #@3
    .local v1, "as":[Ljava/util/concurrent/atomic/Striped64$Cell;
    if-nez v1, :cond_0

    #@5
    .line 63
    iget-wide v2, p0, Ljava/util/concurrent/atomic/DoubleAdder;->base:J

    #@7
    .line 65
    .local v2, "b":J
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@a
    move-result-wide v8

    #@b
    add-double/2addr v8, p1

    #@c
    .line 64
    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@f
    move-result-wide v8

    #@10
    .line 63
    invoke-virtual {p0, v2, v3, v8, v9}, Ljava/util/concurrent/atomic/Striped64;->casBase(JJ)Z

    #@13
    move-result v8

    #@14
    if-eqz v8, :cond_0

    #@16
    .line 60
    .end local v2    # "b":J
    :goto_0
    return-void

    #@17
    .line 66
    :cond_0
    const/4 v5, 0x1

    #@18
    .line 67
    .local v5, "uncontended":Z
    if-eqz v1, :cond_1

    #@1a
    array-length v8, v1

    #@1b
    add-int/lit8 v4, v8, -0x1

    #@1d
    .local v4, "m":I
    if-gez v4, :cond_2

    #@1f
    .line 72
    .end local v4    # "m":I
    .end local v5    # "uncontended":Z
    :cond_1
    invoke-virtual {p0, p1, p2, v10, v5}, Ljava/util/concurrent/atomic/Striped64;->doubleAccumulate(DLjava/util/function/DoubleBinaryOperator;Z)V

    #@22
    goto :goto_0

    #@23
    .line 68
    .restart local v4    # "m":I
    .restart local v5    # "uncontended":Z
    :cond_2
    invoke-static {}, Ljava/util/concurrent/atomic/DoubleAdder;->getProbe()I

    #@26
    move-result v8

    #@27
    and-int/2addr v8, v4

    #@28
    aget-object v0, v1, v8

    #@2a
    .local v0, "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    if-eqz v0, :cond_1

    #@2c
    .line 69
    iget-wide v6, v0, Ljava/util/concurrent/atomic/Striped64$Cell;->value:J

    #@2e
    .line 71
    .local v6, "v":J
    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@31
    move-result-wide v8

    #@32
    add-double/2addr v8, p1

    #@33
    .line 70
    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@36
    move-result-wide v8

    #@37
    .line 69
    invoke-virtual {v0, v6, v7, v8, v9}, Ljava/util/concurrent/atomic/Striped64$Cell;->cas(JJ)Z

    #@3a
    move-result v5

    #@3b
    .local v5, "uncontended":Z
    if-eqz v5, :cond_1

    #@3d
    goto :goto_0
.end method

.method public doubleValue()D
    .locals 2

    #@0
    .prologue
    .line 156
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/DoubleAdder;->sum()D

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public floatValue()F
    .locals 2

    #@0
    .prologue
    .line 180
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/DoubleAdder;->sum()D

    #@3
    move-result-wide v0

    #@4
    double-to-float v0, v0

    #@5
    return v0
.end method

.method public intValue()I
    .locals 2

    #@0
    .prologue
    .line 172
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/DoubleAdder;->sum()D

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
    .line 164
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/DoubleAdder;->sum()D

    #@3
    move-result-wide v0

    #@4
    double-to-long v0, v0

    #@5
    return-wide v0
.end method

.method public reset()V
    .locals 4

    #@0
    .prologue
    .line 107
    iget-object v1, p0, Ljava/util/concurrent/atomic/DoubleAdder;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    #@2
    .line 108
    .local v1, "as":[Ljava/util/concurrent/atomic/Striped64$Cell;
    const-wide/16 v2, 0x0

    #@4
    iput-wide v2, p0, Ljava/util/concurrent/atomic/DoubleAdder;->base:J

    #@6
    .line 109
    if-eqz v1, :cond_1

    #@8
    .line 110
    const/4 v2, 0x0

    #@9
    array-length v3, v1

    #@a
    :goto_0
    if-ge v2, v3, :cond_1

    #@c
    aget-object v0, v1, v2

    #@e
    .line 111
    .local v0, "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    if-eqz v0, :cond_0

    #@10
    .line 112
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/Striped64$Cell;->reset()V

    #@13
    .line 110
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@15
    goto :goto_0

    #@16
    .line 106
    .end local v0    # "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    :cond_1
    return-void
.end method

.method public sum()D
    .locals 8

    #@0
    .prologue
    .line 89
    iget-object v1, p0, Ljava/util/concurrent/atomic/DoubleAdder;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    #@2
    .line 90
    .local v1, "as":[Ljava/util/concurrent/atomic/Striped64$Cell;
    iget-wide v4, p0, Ljava/util/concurrent/atomic/DoubleAdder;->base:J

    #@4
    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@7
    move-result-wide v2

    #@8
    .line 91
    .local v2, "sum":D
    if-eqz v1, :cond_1

    #@a
    .line 92
    const/4 v4, 0x0

    #@b
    array-length v5, v1

    #@c
    :goto_0
    if-ge v4, v5, :cond_1

    #@e
    aget-object v0, v1, v4

    #@10
    .line 93
    .local v0, "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    if-eqz v0, :cond_0

    #@12
    .line 94
    iget-wide v6, v0, Ljava/util/concurrent/atomic/Striped64$Cell;->value:J

    #@14
    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@17
    move-result-wide v6

    #@18
    add-double/2addr v2, v6

    #@19
    .line 92
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 96
    .end local v0    # "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    :cond_1
    return-wide v2
.end method

.method public sumThenReset()D
    .locals 10

    #@0
    .prologue
    .line 127
    iget-object v1, p0, Ljava/util/concurrent/atomic/DoubleAdder;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    #@2
    .line 128
    .local v1, "as":[Ljava/util/concurrent/atomic/Striped64$Cell;
    iget-wide v6, p0, Ljava/util/concurrent/atomic/DoubleAdder;->base:J

    #@4
    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@7
    move-result-wide v2

    #@8
    .line 129
    .local v2, "sum":D
    const-wide/16 v6, 0x0

    #@a
    iput-wide v6, p0, Ljava/util/concurrent/atomic/DoubleAdder;->base:J

    #@c
    .line 130
    if-eqz v1, :cond_1

    #@e
    .line 131
    const/4 v6, 0x0

    #@f
    array-length v7, v1

    #@10
    :goto_0
    if-ge v6, v7, :cond_1

    #@12
    aget-object v0, v1, v6

    #@14
    .line 132
    .local v0, "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    if-eqz v0, :cond_0

    #@16
    .line 133
    iget-wide v4, v0, Ljava/util/concurrent/atomic/Striped64$Cell;->value:J

    #@18
    .line 134
    .local v4, "v":J
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/Striped64$Cell;->reset()V

    #@1b
    .line 135
    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@1e
    move-result-wide v8

    #@1f
    add-double/2addr v2, v8

    #@20
    .line 131
    .end local v4    # "v":J
    :cond_0
    add-int/lit8 v6, v6, 0x1

    #@22
    goto :goto_0

    #@23
    .line 139
    .end local v0    # "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    :cond_1
    return-wide v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 147
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/DoubleAdder;->sum()D

    #@3
    move-result-wide v0

    #@4
    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

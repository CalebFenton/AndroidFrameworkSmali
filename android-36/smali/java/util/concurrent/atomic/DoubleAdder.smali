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
.field private static final whitelist serialVersionUID:J = 0x6499de12a37d0a3dL


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 81
    invoke-direct {p0}, Ljava/util/concurrent/atomic/Striped64;-><init>()V

    .line 82
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

    .line 260
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Proxy required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private whitelist writeReplace()Ljava/lang/Object;
    .registers 2

    .line 251
    new-instance v0, Ljava/util/concurrent/atomic/DoubleAdder$SerializationProxy;

    invoke-direct {v0, p0}, Ljava/util/concurrent/atomic/DoubleAdder$SerializationProxy;-><init>(Ljava/util/concurrent/atomic/DoubleAdder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api add(D)V
    .registers 15
    .param p1, "x"    # D

    .line 91
    iget-object v0, p0, Ljava/util/concurrent/atomic/DoubleAdder;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    move-object v1, v0

    .local v1, "cs":[Ljava/util/concurrent/atomic/Striped64$Cell;
    if-nez v0, :cond_1a

    iget-wide v2, p0, Ljava/util/concurrent/atomic/DoubleAdder;->base:J

    move-wide v4, v2

    .line 94
    .local v4, "b":J
    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v6

    add-double/2addr v6, p1

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v6

    .line 92
    invoke-virtual {p0, v2, v3, v6, v7}, Ljava/util/concurrent/atomic/DoubleAdder;->casBase(JJ)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_1a

    :cond_18
    move-wide v7, p1

    goto :goto_4c

    .line 95
    .end local v4    # "b":J
    :cond_1a
    :goto_1a
    invoke-static {}, Ljava/util/concurrent/atomic/DoubleAdder;->getProbe()I

    move-result v11

    .line 96
    .local v11, "index":I
    const/4 v0, 0x1

    .line 97
    .local v0, "uncontended":Z
    if-eqz v1, :cond_45

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    move v3, v2

    .local v3, "m":I
    if-ltz v2, :cond_45

    and-int v2, v11, v3

    aget-object v2, v1, v2

    move-object v4, v2

    .local v4, "c":Ljava/util/concurrent/atomic/Striped64$Cell;
    if-eqz v2, :cond_45

    iget-wide v5, v4, Ljava/util/concurrent/atomic/Striped64$Cell;->value:J

    move-wide v7, v5

    .line 101
    .local v7, "v":J
    invoke-static {v7, v8}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v9

    add-double/2addr v9, p1

    invoke-static {v9, v10}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v9

    .line 99
    invoke-virtual {v4, v5, v6, v9, v10}, Ljava/util/concurrent/atomic/Striped64$Cell;->cas(JJ)Z

    move-result v2

    move v0, v2

    if-nez v2, :cond_43

    move v10, v0

    goto :goto_46

    :cond_43
    move-wide v7, p1

    goto :goto_4c

    .line 102
    .end local v3    # "m":I
    .end local v4    # "c":Ljava/util/concurrent/atomic/Striped64$Cell;
    .end local v7    # "v":J
    :cond_45
    move v10, v0

    .end local v0    # "uncontended":Z
    .local v10, "uncontended":Z
    :goto_46
    const/4 v9, 0x0

    move-object v6, p0

    move-wide v7, p1

    .end local p1    # "x":D
    .local v7, "x":D
    invoke-virtual/range {v6 .. v11}, Ljava/util/concurrent/atomic/DoubleAdder;->doubleAccumulate(DLjava/util/function/DoubleBinaryOperator;ZI)V

    .line 104
    .end local v10    # "uncontended":Z
    .end local v11    # "index":I
    :goto_4c
    return-void
.end method

.method public whitelist test-api doubleValue()D
    .registers 3

    .line 182
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/DoubleAdder;->sum()D

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api floatValue()F
    .registers 3

    .line 206
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/DoubleAdder;->sum()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public whitelist test-api intValue()I
    .registers 3

    .line 198
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/DoubleAdder;->sum()D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public whitelist test-api longValue()J
    .registers 3

    .line 190
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/DoubleAdder;->sum()D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method

.method public whitelist test-api reset()V
    .registers 5

    .line 137
    iget-object v0, p0, Ljava/util/concurrent/atomic/DoubleAdder;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    .line 138
    .local v0, "cs":[Ljava/util/concurrent/atomic/Striped64$Cell;
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Ljava/util/concurrent/atomic/DoubleAdder;->base:J

    .line 139
    if-eqz v0, :cond_16

    .line 140
    array-length v1, v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    .line 141
    .local v3, "c":Ljava/util/concurrent/atomic/Striped64$Cell;
    if-eqz v3, :cond_13

    .line 142
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/Striped64$Cell;->reset()V

    .line 140
    .end local v3    # "c":Ljava/util/concurrent/atomic/Striped64$Cell;
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 144
    :cond_16
    return-void
.end method

.method public whitelist test-api sum()D
    .registers 9

    .line 119
    iget-object v0, p0, Ljava/util/concurrent/atomic/DoubleAdder;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    .line 120
    .local v0, "cs":[Ljava/util/concurrent/atomic/Striped64$Cell;
    iget-wide v1, p0, Ljava/util/concurrent/atomic/DoubleAdder;->base:J

    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v1

    .line 121
    .local v1, "sum":D
    if-eqz v0, :cond_1c

    .line 122
    array-length v3, v0

    const/4 v4, 0x0

    :goto_c
    if-ge v4, v3, :cond_1c

    aget-object v5, v0, v4

    .line 123
    .local v5, "c":Ljava/util/concurrent/atomic/Striped64$Cell;
    if-eqz v5, :cond_19

    .line 124
    iget-wide v6, v5, Ljava/util/concurrent/atomic/Striped64$Cell;->value:J

    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v6

    add-double/2addr v1, v6

    .line 122
    .end local v5    # "c":Ljava/util/concurrent/atomic/Striped64$Cell;
    :cond_19
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 126
    :cond_1c
    return-wide v1
.end method

.method public whitelist test-api sumThenReset()D
    .registers 11

    .line 157
    iget-object v0, p0, Ljava/util/concurrent/atomic/DoubleAdder;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    .line 158
    .local v0, "cs":[Ljava/util/concurrent/atomic/Striped64$Cell;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/atomic/DoubleAdder;->getAndSetBase(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    .line 159
    .local v3, "sum":D
    if-eqz v0, :cond_22

    .line 160
    array-length v5, v0

    const/4 v6, 0x0

    :goto_10
    if-ge v6, v5, :cond_22

    aget-object v7, v0, v6

    .line 161
    .local v7, "c":Ljava/util/concurrent/atomic/Striped64$Cell;
    if-eqz v7, :cond_1f

    .line 162
    invoke-virtual {v7, v1, v2}, Ljava/util/concurrent/atomic/Striped64$Cell;->getAndSet(J)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    add-double/2addr v3, v8

    .line 160
    .end local v7    # "c":Ljava/util/concurrent/atomic/Striped64$Cell;
    :cond_1f
    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    .line 165
    :cond_22
    return-wide v3
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 173
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/DoubleAdder;->sum()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

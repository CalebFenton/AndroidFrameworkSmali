.class public final Lcom/android/internal/util/QuickSelect;
.super Ljava/lang/Object;
.source "QuickSelect.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist partition(Ljava/util/List;IIILjava/util/Comparator;)I
    .registers 9
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "pivotIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;III",
            "Ljava/util/Comparator<",
            "-TT;>;)I"
        }
    .end annotation

    .line 101
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p4, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 102
    .local v0, "pivotValue":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p2, p3}, Lcom/android/internal/util/QuickSelect;->swap(Ljava/util/List;II)V

    .line 103
    move v1, p1

    .line 104
    .local v1, "storeIndex":I
    move v2, p1

    .local v2, "i":I
    :goto_9
    if-ge v2, p2, :cond_1d

    .line 105
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p4, v3, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_1a

    .line 106
    invoke-static {p0, v1, v2}, Lcom/android/internal/util/QuickSelect;->swap(Ljava/util/List;II)V

    .line 107
    add-int/lit8 v1, v1, 0x1

    .line 104
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 110
    .end local v2    # "i":I
    :cond_1d
    invoke-static {p0, p2, v1}, Lcom/android/internal/util/QuickSelect;->swap(Ljava/util/List;II)V

    .line 111
    return v1
.end method

.method private static blacklist partition([IIII)I
    .registers 8
    .param p0, "array"    # [I
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "pivotIndex"    # I

    .line 115
    aget v0, p0, p3

    .line 116
    .local v0, "pivotValue":I
    invoke-static {p0, p2, p3}, Lcom/android/internal/util/QuickSelect;->swap([III)V

    .line 117
    move v1, p1

    .line 118
    .local v1, "storeIndex":I
    move v2, p1

    .local v2, "i":I
    :goto_7
    if-ge v2, p2, :cond_15

    .line 119
    aget v3, p0, v2

    if-ge v3, v0, :cond_12

    .line 120
    invoke-static {p0, v1, v2}, Lcom/android/internal/util/QuickSelect;->swap([III)V

    .line 121
    add-int/lit8 v1, v1, 0x1

    .line 118
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 124
    .end local v2    # "i":I
    :cond_15
    invoke-static {p0, p2, v1}, Lcom/android/internal/util/QuickSelect;->swap([III)V

    .line 125
    return v1
.end method

.method private static blacklist partition([JIII)I
    .registers 10
    .param p0, "array"    # [J
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "pivotIndex"    # I

    .line 129
    aget-wide v0, p0, p3

    .line 130
    .local v0, "pivotValue":J
    invoke-static {p0, p2, p3}, Lcom/android/internal/util/QuickSelect;->swap([JII)V

    .line 131
    move v2, p1

    .line 132
    .local v2, "storeIndex":I
    move v3, p1

    .local v3, "i":I
    :goto_7
    if-ge v3, p2, :cond_17

    .line 133
    aget-wide v4, p0, v3

    cmp-long v4, v4, v0

    if-gez v4, :cond_14

    .line 134
    invoke-static {p0, v2, v3}, Lcom/android/internal/util/QuickSelect;->swap([JII)V

    .line 135
    add-int/lit8 v2, v2, 0x1

    .line 132
    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 138
    .end local v3    # "i":I
    :cond_17
    invoke-static {p0, p2, v2}, Lcom/android/internal/util/QuickSelect;->swap([JII)V

    .line 139
    return v2
.end method

.method private static blacklist partition([Ljava/lang/Object;IIILjava/util/Comparator;)I
    .registers 9
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "pivotIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;III",
            "Ljava/util/Comparator<",
            "-TT;>;)I"
        }
    .end annotation

    .line 144
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p4, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    aget-object v0, p0, p3

    .line 145
    .local v0, "pivotValue":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p2, p3}, Lcom/android/internal/util/QuickSelect;->swap([Ljava/lang/Object;II)V

    .line 146
    move v1, p1

    .line 147
    .local v1, "storeIndex":I
    move v2, p1

    .local v2, "i":I
    :goto_7
    if-ge v2, p2, :cond_19

    .line 148
    aget-object v3, p0, v2

    invoke-interface {p4, v3, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_16

    .line 149
    invoke-static {p0, v1, v2}, Lcom/android/internal/util/QuickSelect;->swap([Ljava/lang/Object;II)V

    .line 150
    add-int/lit8 v1, v1, 0x1

    .line 147
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 153
    .end local v2    # "i":I
    :cond_19
    invoke-static {p0, p2, v1}, Lcom/android/internal/util/QuickSelect;->swap([Ljava/lang/Object;II)V

    .line 154
    return v1
.end method

.method public static blacklist select([IIII)I
    .registers 6
    .param p0, "array"    # [I
    .param p1, "start"    # I
    .param p2, "length"    # I
    .param p3, "k"    # I

    .line 213
    if-eqz p0, :cond_1c

    if-ltz p1, :cond_1c

    if-lez p2, :cond_1c

    array-length v0, p0

    add-int v1, p1, p2

    if-lt v0, v1, :cond_1c

    if-ltz p3, :cond_1c

    if-le p2, p3, :cond_1c

    .line 217
    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    add-int v1, p3, p1

    invoke-static {p0, p1, v0, v1}, Lcom/android/internal/util/QuickSelect;->selectImpl([IIII)I

    move-result v0

    aget v0, p0, v0

    return v0

    .line 215
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static blacklist select([JIII)J
    .registers 6
    .param p0, "array"    # [J
    .param p1, "start"    # I
    .param p2, "length"    # I
    .param p3, "k"    # I

    .line 231
    if-eqz p0, :cond_1c

    if-ltz p1, :cond_1c

    if-lez p2, :cond_1c

    array-length v0, p0

    add-int v1, p1, p2

    if-lt v0, v1, :cond_1c

    if-ltz p3, :cond_1c

    if-le p2, p3, :cond_1c

    .line 235
    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    add-int v1, p3, p1

    invoke-static {p0, p1, v0, v1}, Lcom/android/internal/util/QuickSelect;->selectImpl([JIII)I

    move-result v0

    aget-wide v0, p0, v0

    return-wide v0

    .line 233
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static blacklist select(Ljava/util/List;IIILjava/util/Comparator;)Ljava/lang/Object;
    .registers 7
    .param p1, "start"    # I
    .param p2, "length"    # I
    .param p3, "k"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;III",
            "Ljava/util/Comparator<",
            "-TT;>;)TT;"
        }
    .end annotation

    .line 195
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p4, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    if-eqz p0, :cond_21

    if-ltz p1, :cond_21

    if-lez p2, :cond_21

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int v1, p1, p2

    if-lt v0, v1, :cond_21

    if-ltz p3, :cond_21

    if-le p2, p3, :cond_21

    .line 199
    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    add-int v1, p3, p1

    invoke-static {p0, p1, v0, v1, p4}, Lcom/android/internal/util/QuickSelect;->selectImpl(Ljava/util/List;IIILjava/util/Comparator;)I

    move-result v0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 197
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static blacklist select([Ljava/lang/Object;IIILjava/util/Comparator;)Ljava/lang/Object;
    .registers 7
    .param p1, "start"    # I
    .param p2, "length"    # I
    .param p3, "k"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;III",
            "Ljava/util/Comparator<",
            "-TT;>;)TT;"
        }
    .end annotation

    .line 251
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p4, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    if-eqz p0, :cond_1c

    if-ltz p1, :cond_1c

    if-lez p2, :cond_1c

    array-length v0, p0

    add-int v1, p1, p2

    if-lt v0, v1, :cond_1c

    if-ltz p3, :cond_1c

    if-le p2, p3, :cond_1c

    .line 255
    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    add-int v1, p3, p1

    invoke-static {p0, p1, v0, v1, p4}, Lcom/android/internal/util/QuickSelect;->selectImpl([Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v0

    aget-object v0, p0, v0

    return-object v0

    .line 253
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private static blacklist selectImpl(Ljava/util/List;IIILjava/util/Comparator;)I
    .registers 6
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "k"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;III",
            "Ljava/util/Comparator<",
            "-TT;>;)I"
        }
    .end annotation

    .line 36
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p4, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    nop

    :goto_1
    if-ne p1, p2, :cond_4

    .line 37
    return p1

    .line 39
    :cond_4
    add-int v0, p1, p2

    shr-int/lit8 v0, v0, 0x1

    invoke-static {p0, p1, p2, v0, p4}, Lcom/android/internal/util/QuickSelect;->partition(Ljava/util/List;IIILjava/util/Comparator;)I

    move-result v0

    .line 40
    .local v0, "pivotIndex":I
    if-ne p3, v0, :cond_f

    .line 41
    return p3

    .line 42
    :cond_f
    if-ge p3, v0, :cond_14

    .line 43
    add-int/lit8 p2, v0, -0x1

    goto :goto_16

    .line 45
    :cond_14
    add-int/lit8 p1, v0, 0x1

    .line 47
    .end local v0    # "pivotIndex":I
    :goto_16
    goto :goto_1
.end method

.method private static blacklist selectImpl([IIII)I
    .registers 5
    .param p0, "array"    # [I
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "k"    # I

    .line 52
    nop

    :goto_1
    if-ne p1, p2, :cond_4

    .line 53
    return p1

    .line 55
    :cond_4
    add-int v0, p1, p2

    shr-int/lit8 v0, v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/util/QuickSelect;->partition([IIII)I

    move-result v0

    .line 56
    .local v0, "pivotIndex":I
    if-ne p3, v0, :cond_f

    .line 57
    return p3

    .line 58
    :cond_f
    if-ge p3, v0, :cond_14

    .line 59
    add-int/lit8 p2, v0, -0x1

    goto :goto_16

    .line 61
    :cond_14
    add-int/lit8 p1, v0, 0x1

    .line 63
    .end local v0    # "pivotIndex":I
    :goto_16
    goto :goto_1
.end method

.method private static blacklist selectImpl([JIII)I
    .registers 5
    .param p0, "array"    # [J
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "k"    # I

    .line 68
    nop

    :goto_1
    if-ne p1, p2, :cond_4

    .line 69
    return p1

    .line 71
    :cond_4
    add-int v0, p1, p2

    shr-int/lit8 v0, v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/util/QuickSelect;->partition([JIII)I

    move-result v0

    .line 72
    .local v0, "pivotIndex":I
    if-ne p3, v0, :cond_f

    .line 73
    return p3

    .line 74
    :cond_f
    if-ge p3, v0, :cond_14

    .line 75
    add-int/lit8 p2, v0, -0x1

    goto :goto_16

    .line 77
    :cond_14
    add-int/lit8 p1, v0, 0x1

    .line 79
    .end local v0    # "pivotIndex":I
    :goto_16
    goto :goto_1
.end method

.method private static blacklist selectImpl([Ljava/lang/Object;IIILjava/util/Comparator;)I
    .registers 6
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "k"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;III",
            "Ljava/util/Comparator<",
            "-TT;>;)I"
        }
    .end annotation

    .line 85
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p4, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    nop

    :goto_1
    if-ne p1, p2, :cond_4

    .line 86
    return p1

    .line 88
    :cond_4
    add-int v0, p1, p2

    shr-int/lit8 v0, v0, 0x1

    invoke-static {p0, p1, p2, v0, p4}, Lcom/android/internal/util/QuickSelect;->partition([Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v0

    .line 89
    .local v0, "pivotIndex":I
    if-ne p3, v0, :cond_f

    .line 90
    return p3

    .line 91
    :cond_f
    if-ge p3, v0, :cond_14

    .line 92
    add-int/lit8 p2, v0, -0x1

    goto :goto_16

    .line 94
    :cond_14
    add-int/lit8 p1, v0, 0x1

    .line 96
    .end local v0    # "pivotIndex":I
    :goto_16
    goto :goto_1
.end method

.method private static blacklist swap(Ljava/util/List;II)V
    .registers 5
    .param p1, "left"    # I
    .param p2, "right"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;II)V"
        }
    .end annotation

    .line 158
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 159
    .local v0, "tmp":Ljava/lang/Object;, "TT;"
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 160
    invoke-interface {p0, p2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 161
    return-void
.end method

.method private static blacklist swap([III)V
    .registers 5
    .param p0, "array"    # [I
    .param p1, "left"    # I
    .param p2, "right"    # I

    .line 164
    aget v0, p0, p1

    .line 165
    .local v0, "tmp":I
    aget v1, p0, p2

    aput v1, p0, p1

    .line 166
    aput v0, p0, p2

    .line 167
    return-void
.end method

.method private static blacklist swap([JII)V
    .registers 7
    .param p0, "array"    # [J
    .param p1, "left"    # I
    .param p2, "right"    # I

    .line 170
    aget-wide v0, p0, p1

    .line 171
    .local v0, "tmp":J
    aget-wide v2, p0, p2

    aput-wide v2, p0, p1

    .line 172
    aput-wide v0, p0, p2

    .line 173
    return-void
.end method

.method private static blacklist swap([Ljava/lang/Object;II)V
    .registers 5
    .param p1, "left"    # I
    .param p2, "right"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)V"
        }
    .end annotation

    .line 176
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    aget-object v0, p0, p1

    .line 177
    .local v0, "tmp":Ljava/lang/Object;, "TT;"
    aget-object v1, p0, p2

    aput-object v1, p0, p1

    .line 178
    aput-object v0, p0, p2

    .line 179
    return-void
.end method

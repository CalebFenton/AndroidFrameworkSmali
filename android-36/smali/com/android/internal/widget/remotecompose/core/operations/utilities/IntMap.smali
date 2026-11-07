.class public Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;
.super Ljava/lang/Object;
.source "IntMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_CAPACITY:I = 0x10

.field private static final blacklist LOAD_FACTOR:F = 0.75f

.field private static final blacklist NOT_PRESENT:I = -0x80000000


# instance fields
.field private blacklist mKeys:[I

.field blacklist mSize:I

.field private blacklist mValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 5

    .line 33
    .local p0, "this":Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;, "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/16 v0, 0x10

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    .line 35
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 36
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mValues:Ljava/util/ArrayList;

    .line 37
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_18
    if-ge v1, v0, :cond_23

    .line 38
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mValues:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 40
    .end local v1    # "i":I
    :cond_23
    return-void
.end method

.method private blacklist findKey(I)I
    .registers 5
    .param p1, "key"    # I

    .line 106
    .local p0, "this":Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;, "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<TT;>;"
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->hash(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    .line 107
    .local v0, "index":I
    :goto_8
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    aget v1, v1, v0

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1f

    .line 108
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_17

    .line 109
    return v0

    .line 111
    :cond_17
    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    array-length v2, v2

    rem-int v0, v1, v2

    goto :goto_8

    .line 113
    :cond_1f
    const/4 v1, -0x1

    return v1
.end method

.method private blacklist hash(I)I
    .registers 2
    .param p1, "key"    # I

    .line 117
    .local p0, "this":Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;, "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<TT;>;"
    return p1
.end method

.method private blacklist insert(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    .line 90
    .local p0, "this":Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;, "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->hash(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    .line 91
    .local v0, "index":I
    :goto_8
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    aget v1, v1, v0

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1e

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_1e

    .line 92
    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    array-length v2, v2

    rem-int v0, v1, v2

    goto :goto_8

    .line 94
    :cond_1e
    const/4 v1, 0x0

    .line 95
    .local v1, "oldValue":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    aget v3, v3, v0

    if-ne v3, v2, :cond_2c

    .line 96
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mSize:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mSize:I

    goto :goto_32

    .line 98
    :cond_2c
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 100
    :goto_32
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    aput p1, v2, v0

    .line 101
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 102
    return-object v1
.end method

.method private blacklist rehashFrom(I)V
    .registers 7
    .param p1, "startIndex"    # I

    .line 170
    .local p0, "this":Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;, "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<TT;>;"
    move v0, p1

    .line 172
    .local v0, "index":I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    aget v1, v1, v0

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_2e

    .line 173
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    aget v1, v1, v0

    .line 174
    .local v1, "keyToRehash":I
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 177
    .local v3, "valueToRehash":Ljava/lang/Object;, "TT;"
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    aput v2, v4, v0

    .line 178
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mValues:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mSize:I

    .line 182
    invoke-direct {p0, v1, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->insert(ILjava/lang/Object;)Ljava/lang/Object;

    .line 184
    add-int/lit8 v2, v0, 0x1

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    array-length v4, v4

    rem-int v0, v2, v4

    .line 185
    .end local v1    # "keyToRehash":I
    .end local v3    # "valueToRehash":Ljava/lang/Object;, "TT;"
    goto :goto_1

    .line 186
    :cond_2e
    return-void
.end method

.method private blacklist resize()V
    .registers 7

    .line 121
    .local p0, "this":Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;, "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<TT;>;"
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    .line 122
    .local v0, "oldKeys":[I
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mValues:Ljava/util/ArrayList;

    .line 123
    .local v1, "oldValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    .line 124
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    array-length v3, v3

    const/high16 v4, -0x80000000

    if-ge v2, v3, :cond_1a

    .line 125
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    aput v4, v3, v2

    .line 124
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 127
    .end local v2    # "i":I
    :cond_1a
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v0

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mValues:Ljava/util/ArrayList;

    .line 128
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_25
    array-length v3, v0

    mul-int/lit8 v3, v3, 0x2

    if-ge v2, v3, :cond_33

    .line 129
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mValues:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 131
    .end local v2    # "i":I
    :cond_33
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mSize:I

    .line 132
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_37
    array-length v3, v0

    if-ge v2, v3, :cond_4a

    .line 133
    aget v3, v0, v2

    if-eq v3, v4, :cond_47

    .line 134
    aget v3, v0, v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 132
    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 137
    .end local v2    # "i":I
    :cond_4a
    return-void
.end method


# virtual methods
.method public blacklist clear()V
    .registers 3

    .line 44
    .local p0, "this":Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;, "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<TT;>;"
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 45
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mSize:I

    .line 47
    return-void
.end method

.method public blacklist get(I)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 73
    .local p0, "this":Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;, "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<TT;>;"
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->findKey(I)I

    move-result v0

    .line 74
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 75
    const/4 v1, 0x0

    return-object v1

    .line 76
    :cond_9
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public blacklist put(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    .line 58
    .local p0, "this":Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;, "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_1a

    .line 59
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mSize:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    array-length v1, v1

    int-to-float v1, v1

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_15

    .line 60
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->resize()V

    .line 62
    :cond_15
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->insert(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 58
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Key cannot be NOT_PRESENT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist remove(I)Ljava/lang/Object;
    .registers 8
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 147
    .local p0, "this":Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;, "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<TT;>;"
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->hash(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    .line 148
    .local v0, "index":I
    move v1, v0

    .line 150
    .local v1, "initialIndex":I
    :cond_9
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    aget v2, v2, v0

    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    if-eq v2, v4, :cond_41

    .line 151
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_37

    .line 152
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 153
    .local v2, "oldValue":Ljava/lang/Object;, "TT;"
    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    aput v4, v5, v0

    .line 154
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v4, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mSize:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mSize:I

    .line 158
    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    array-length v4, v4

    rem-int/2addr v3, v4

    invoke-direct {p0, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->rehashFrom(I)V

    .line 159
    return-object v2

    .line 161
    .end local v2    # "oldValue":Ljava/lang/Object;, "TT;"
    :cond_37
    add-int/lit8 v2, v0, 0x1

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    array-length v4, v4

    rem-int v0, v2, v4

    .line 162
    if-ne v0, v1, :cond_9

    .line 163
    nop

    .line 166
    :cond_41
    return-object v3
.end method

.method public blacklist size()I
    .registers 2

    .line 85
    .local p0, "this":Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;, "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<TT;>;"
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mSize:I

    return v0
.end method

.class public Ljava/util/ArrayDeque;
.super Ljava/util/AbstractCollection;
.source "ArrayDeque.java"

# interfaces
.implements Ljava/util/Deque;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/ArrayDeque$DeqIterator;,
        Ljava/util/ArrayDeque$DescendingIterator;,
        Ljava/util/ArrayDeque$DeqSpliterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection<",
        "TE;>;",
        "Ljava/util/Deque<",
        "TE;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final blacklist MAX_ARRAY_SIZE:I = 0x7ffffff7

.field private static final whitelist serialVersionUID:J = 0x207cda2e240da08bL


# instance fields
.field transient greylist elements:[Ljava/lang/Object;

.field transient greylist head:I

.field transient greylist tail:I


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 188
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 189
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 190
    return-void
.end method

.method public constructor whitelist test-api <init>(I)V
    .registers 3
    .param p1, "numElements"    # I

    .line 198
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 199
    nop

    .line 200
    const/4 v0, 0x1

    if-ge p1, v0, :cond_8

    goto :goto_10

    .line 201
    :cond_8
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_e

    goto :goto_10

    .line 202
    :cond_e
    add-int/lit8 v0, p1, 0x1

    :goto_10
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 203
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 216
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 217
    invoke-direct {p0, p1}, Ljava/util/ArrayDeque;->copyElements(Ljava/util/Collection;)V

    .line 218
    return-void
.end method

.method private blacklist bulkRemove(Ljava/util/function/Predicate;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 930
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    iget-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 932
    .local v0, "es":[Ljava/lang/Object;
    iget v1, p0, Ljava/util/ArrayDeque;->head:I

    .local v1, "i":I
    iget v2, p0, Ljava/util/ArrayDeque;->tail:I

    .local v2, "end":I
    if-gt v1, v2, :cond_a

    move v3, v2

    goto :goto_b

    :cond_a
    array-length v3, v0

    .line 934
    .local v3, "to":I
    :goto_b
    if-ge v1, v3, :cond_1f

    .line 935
    invoke-static {v0, v1}, Ljava/util/ArrayDeque;->elementAt([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 936
    invoke-direct {p0, p1, v1}, Ljava/util/ArrayDeque;->bulkRemoveModified(Ljava/util/function/Predicate;I)Z

    move-result v4

    return v4

    .line 934
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 937
    :cond_1f
    if-ne v3, v2, :cond_2d

    .line 938
    iget v4, p0, Ljava/util/ArrayDeque;->tail:I

    if-ne v2, v4, :cond_27

    .line 942
    .end local v1    # "i":I
    .end local v2    # "end":I
    .end local v3    # "to":I
    const/4 v1, 0x0

    return v1

    .line 938
    .restart local v1    # "i":I
    .restart local v2    # "end":I
    .restart local v3    # "to":I
    :cond_27
    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4

    .line 933
    :cond_2d
    const/4 v1, 0x0

    move v3, v2

    goto :goto_b
.end method

.method private blacklist bulkRemoveModified(Ljava/util/function/Predicate;I)Z
    .registers 13
    .param p2, "beg"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TE;>;I)Z"
        }
    .end annotation

    .line 967
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    iget-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 968
    .local v0, "es":[Ljava/lang/Object;
    array-length v1, v0

    .line 969
    .local v1, "capacity":I
    iget v2, p0, Ljava/util/ArrayDeque;->tail:I

    .line 970
    .local v2, "end":I
    invoke-static {v2, p2, v1}, Ljava/util/ArrayDeque;->sub(III)I

    move-result v3

    invoke-static {v3}, Ljava/util/ArrayDeque;->nBits(I)[J

    move-result-object v3

    .line 971
    .local v3, "deathRow":[J
    const/4 v4, 0x0

    const-wide/16 v5, 0x1

    aput-wide v5, v3, v4

    .line 972
    add-int/lit8 v4, p2, 0x1

    .local v4, "i":I
    if-gt v4, v2, :cond_18

    move v5, v2

    goto :goto_19

    :cond_18
    array-length v5, v0

    .local v5, "to":I
    :goto_19
    move v6, p2

    .line 974
    .local v6, "k":I
    :goto_1a
    if-ge v4, v5, :cond_2e

    .line 975
    invoke-static {v0, v4}, Ljava/util/ArrayDeque;->elementAt([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2b

    .line 976
    sub-int v7, v4, v6

    invoke-static {v3, v7}, Ljava/util/ArrayDeque;->setBit([JI)V

    .line 974
    :cond_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 977
    :cond_2e
    if-ne v5, v2, :cond_81

    .line 980
    .end local v4    # "i":I
    .end local v5    # "to":I
    .end local v6    # "k":I
    move v4, p2

    .line 981
    .local v4, "w":I
    add-int/lit8 v5, p2, 0x1

    .local v5, "i":I
    if-gt v5, v2, :cond_37

    move v6, v2

    goto :goto_38

    :cond_37
    array-length v6, v0

    .local v6, "to":I
    :goto_38
    move v7, p2

    .line 984
    .local v7, "k":I
    :goto_39
    if-ge v5, v6, :cond_4d

    .line 985
    sub-int v8, v5, v7

    invoke-static {v3, v8}, Ljava/util/ArrayDeque;->isClear([JI)Z

    move-result v8

    if-eqz v8, :cond_4a

    .line 986
    add-int/lit8 v8, v4, 0x1

    .end local v4    # "w":I
    .local v8, "w":I
    aget-object v9, v0, v5

    aput-object v9, v0, v4

    move v4, v8

    .line 984
    .end local v8    # "w":I
    .restart local v4    # "w":I
    :cond_4a
    add-int/lit8 v5, v5, 0x1

    goto :goto_39

    .line 987
    :cond_4d
    if-ne v6, v2, :cond_50

    goto :goto_6e

    .line 989
    :cond_50
    const/4 v5, 0x0

    move v6, v2

    sub-int/2addr v7, v1

    :goto_53
    if-ge v5, v6, :cond_69

    if-ge v4, v1, :cond_69

    .line 990
    sub-int v8, v5, v7

    invoke-static {v3, v8}, Ljava/util/ArrayDeque;->isClear([JI)Z

    move-result v8

    if-eqz v8, :cond_66

    .line 991
    add-int/lit8 v8, v4, 0x1

    .end local v4    # "w":I
    .restart local v8    # "w":I
    aget-object v9, v0, v5

    aput-object v9, v0, v4

    move v4, v8

    .line 989
    .end local v8    # "w":I
    .restart local v4    # "w":I
    :cond_66
    add-int/lit8 v5, v5, 0x1

    goto :goto_53

    .line 992
    :cond_69
    if-lt v5, v6, :cond_7f

    .line 993
    if-ne v4, v1, :cond_6e

    const/4 v4, 0x0

    .line 997
    .end local v5    # "i":I
    .end local v6    # "to":I
    .end local v7    # "k":I
    :cond_6e
    :goto_6e
    iget v5, p0, Ljava/util/ArrayDeque;->tail:I

    if-ne v2, v5, :cond_79

    .line 998
    iput v4, p0, Ljava/util/ArrayDeque;->tail:I

    invoke-static {v0, v4, v2}, Ljava/util/ArrayDeque;->circularClear([Ljava/lang/Object;II)V

    .line 999
    const/4 v5, 0x1

    return v5

    .line 997
    :cond_79
    new-instance v5, Ljava/util/ConcurrentModificationException;

    invoke-direct {v5}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v5

    .line 982
    .restart local v5    # "i":I
    .restart local v6    # "to":I
    .restart local v7    # "k":I
    :cond_7f
    const/4 v4, 0x0

    goto :goto_39

    .line 973
    .end local v7    # "k":I
    .local v4, "i":I
    .local v5, "to":I
    .local v6, "k":I
    :cond_81
    const/4 v4, 0x0

    move v5, v2

    sub-int/2addr v6, v1

    goto :goto_1a
.end method

.method private static blacklist circularClear([Ljava/lang/Object;II)V
    .registers 5
    .param p0, "es"    # [Ljava/lang/Object;
    .param p1, "i"    # I
    .param p2, "end"    # I

    .line 1057
    if-gt p1, p2, :cond_4

    move v0, p2

    goto :goto_5

    :cond_4
    array-length v0, p0

    .line 1059
    .local v0, "to":I
    :goto_5
    if-ge p1, v0, :cond_d

    const/4 v1, 0x0

    aput-object v1, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    .line 1060
    :cond_d
    if-ne v0, p2, :cond_10

    .line 1062
    .end local v0    # "to":I
    return-void

    .line 1058
    .restart local v0    # "to":I
    :cond_10
    const/4 p1, 0x0

    move v0, p2

    goto :goto_5
.end method

.method private blacklist copyElements(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 336
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    new-instance v0, Ljava/util/ArrayDeque$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Ljava/util/ArrayDeque$$ExternalSyntheticLambda1;-><init>(Ljava/util/ArrayDeque;)V

    invoke-interface {p1, v0}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 337
    return-void
.end method

.method static final blacklist dec(II)I
    .registers 2
    .param p0, "i"    # I
    .param p1, "modulus"    # I

    .line 234
    add-int/lit8 p0, p0, -0x1

    if-gez p0, :cond_6

    add-int/lit8 p0, p1, -0x1

    .line 235
    :cond_6
    return p0
.end method

.method static final blacklist elementAt([Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 3
    .param p0, "es"    # [Ljava/lang/Object;
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "I)TE;"
        }
    .end annotation

    .line 266
    aget-object v0, p0, p1

    return-object v0
.end method

.method private blacklist grow(I)V
    .registers 12
    .param p1, "needed"    # I

    .line 141
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    iget-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v0, v0

    .line 144
    .local v0, "oldCapacity":I
    const/16 v1, 0x40

    if-ge v0, v1, :cond_a

    add-int/lit8 v1, v0, 0x2

    goto :goto_c

    :cond_a
    shr-int/lit8 v1, v0, 0x1

    .line 145
    .local v1, "jump":I
    :goto_c
    if-lt v1, p1, :cond_17

    add-int v2, v0, v1

    move v3, v2

    .local v3, "newCapacity":I
    const v4, 0x7ffffff7

    sub-int/2addr v2, v4

    if-lez v2, :cond_1b

    .line 147
    .end local v3    # "newCapacity":I
    :cond_17
    invoke-direct {p0, p1, v1}, Ljava/util/ArrayDeque;->newCapacity(II)I

    move-result v3

    .line 149
    .restart local v3    # "newCapacity":I
    :cond_1b
    iget-object v2, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 150
    .local v2, "oldElements":[Ljava/lang/Object;
    iget-object v4, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 152
    .local v4, "es":[Ljava/lang/Object;
    iget v5, p0, Ljava/util/ArrayDeque;->tail:I

    iget v6, p0, Ljava/util/ArrayDeque;->head:I

    const/4 v7, 0x0

    if-lt v5, v6, :cond_38

    iget v5, p0, Ljava/util/ArrayDeque;->tail:I

    iget v6, p0, Ljava/util/ArrayDeque;->head:I

    if-ne v5, v6, :cond_54

    iget v5, p0, Ljava/util/ArrayDeque;->head:I

    aget-object v5, v4, v5

    if-eqz v5, :cond_54

    .line 154
    :cond_38
    sub-int v5, v3, v0

    .line 155
    .local v5, "newSpace":I
    iget v6, p0, Ljava/util/ArrayDeque;->head:I

    iget v8, p0, Ljava/util/ArrayDeque;->head:I

    add-int/2addr v8, v5

    iget v9, p0, Ljava/util/ArrayDeque;->head:I

    sub-int v9, v0, v9

    invoke-static {v4, v6, v4, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    iget v6, p0, Ljava/util/ArrayDeque;->head:I

    .local v6, "i":I
    iget v8, p0, Ljava/util/ArrayDeque;->head:I

    add-int/2addr v8, v5

    iput v8, p0, Ljava/util/ArrayDeque;->head:I

    .local v8, "to":I
    :goto_4d
    if-ge v6, v8, :cond_54

    .line 159
    aput-object v7, v4, v6

    .line 158
    add-int/lit8 v6, v6, 0x1

    goto :goto_4d

    .line 166
    .end local v5    # "newSpace":I
    .end local v6    # "i":I
    .end local v8    # "to":I
    :cond_54
    invoke-static {v2, v7}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 167
    return-void
.end method

.method static final blacklist inc(II)I
    .registers 2
    .param p0, "i"    # I
    .param p1, "modulus"    # I

    .line 225
    add-int/lit8 p0, p0, 0x1

    if-lt p0, p1, :cond_5

    const/4 p0, 0x0

    .line 226
    :cond_5
    return p0
.end method

.method static final blacklist inc(III)I
    .registers 4
    .param p0, "i"    # I
    .param p1, "distance"    # I
    .param p2, "modulus"    # I

    .line 244
    add-int v0, p0, p1

    move p0, v0

    sub-int/2addr v0, p2

    if-ltz v0, :cond_7

    sub-int/2addr p0, p2

    .line 245
    :cond_7
    return p0
.end method

.method private static blacklist isClear([JI)Z
    .registers 6
    .param p0, "bits"    # [J
    .param p1, "i"    # I

    .line 954
    shr-int/lit8 v0, p1, 0x6

    aget-wide v0, p0, v0

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method static synthetic blacklist lambda$removeAll$0(Ljava/util/Collection;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "c"    # Ljava/util/Collection;
    .param p1, "e"    # Ljava/lang/Object;

    .line 917
    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$retainAll$1(Ljava/util/Collection;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "c"    # Ljava/util/Collection;
    .param p1, "e"    # Ljava/lang/Object;

    .line 925
    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static blacklist nBits(I)[J
    .registers 2
    .param p0, "n"    # I

    .line 948
    add-int/lit8 v0, p0, -0x1

    shr-int/lit8 v0, v0, 0x6

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [J

    return-object v0
.end method

.method private blacklist newCapacity(II)I
    .registers 7
    .param p1, "needed"    # I
    .param p2, "jump"    # I

    .line 171
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    iget-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v0, v0

    .line 172
    .local v0, "oldCapacity":I
    add-int v1, v0, p1

    move v2, v1

    .local v2, "minCapacity":I
    const v3, 0x7ffffff7

    sub-int/2addr v1, v3

    if-lez v1, :cond_1a

    .line 173
    if-ltz v2, :cond_12

    .line 175
    const v1, 0x7fffffff

    return v1

    .line 174
    :cond_12
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Sorry, deque too big"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 177
    :cond_1a
    if-le p1, p2, :cond_1d

    .line 178
    return v2

    .line 179
    :cond_1d
    add-int v1, v0, p2

    sub-int/2addr v1, v3

    if-gez v1, :cond_25

    .line 180
    add-int v3, v0, p2

    goto :goto_26

    .line 181
    :cond_25
    nop

    .line 179
    :goto_26
    return v3
.end method

.method static final blacklist nonNullElementAt([Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 4
    .param p0, "es"    # [Ljava/lang/Object;
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "I)TE;"
        }
    .end annotation

    .line 275
    aget-object v0, p0, p1

    .line 276
    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_5

    .line 278
    return-object v0

    .line 277
    :cond_5
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 6
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1208
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1211
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 1212
    .local v0, "size":I
    invoke-static {}, Ljdk/internal/access/SharedSecrets;->getJavaObjectInputStreamAccess()Ljdk/internal/access/JavaObjectInputStreamAccess;

    move-result-object v1

    const-class v2, [Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    invoke-interface {v1, p1, v2, v3}, Ljdk/internal/access/JavaObjectInputStreamAccess;->checkArray(Ljava/io/ObjectInputStream;Ljava/lang/Class;I)V

    .line 1213
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 1214
    iput v0, p0, Ljava/util/ArrayDeque;->tail:I

    .line 1217
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1b
    if-ge v1, v0, :cond_28

    .line 1218
    iget-object v2, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v1

    .line 1217
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 1219
    .end local v1    # "i":I
    :cond_28
    return-void
.end method

.method private static blacklist setBit([JI)V
    .registers 7
    .param p0, "bits"    # [J
    .param p1, "i"    # I

    .line 951
    shr-int/lit8 v0, p1, 0x6

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x1

    shl-long/2addr v3, p1

    or-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 952
    return-void
.end method

.method static final blacklist sub(III)I
    .registers 4
    .param p0, "i"    # I
    .param p1, "j"    # I
    .param p2, "modulus"    # I

    .line 256
    sub-int v0, p0, p1

    move p0, v0

    if-gez v0, :cond_6

    add-int/2addr p0, p2

    .line 257
    :cond_6
    return p0
.end method

.method private blacklist toArray(Ljava/lang/Class;)[Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "[TT;>;)[TT;"
        }
    .end annotation

    .line 1082
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    .local p1, "klazz":Ljava/lang/Class;, "Ljava/lang/Class<[TT;>;"
    iget-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 1084
    .local v0, "es":[Ljava/lang/Object;
    iget v1, p0, Ljava/util/ArrayDeque;->head:I

    .local v1, "head":I
    iget v2, p0, Ljava/util/ArrayDeque;->tail:I

    .line 1085
    .local v2, "tail":I
    const/4 v3, 0x0

    if-gt v1, v2, :cond_b

    move v4, v3

    goto :goto_c

    :cond_b
    array-length v4, v0

    :goto_c
    add-int/2addr v4, v2

    move v5, v4

    .local v5, "end":I
    if-ltz v4, :cond_15

    .line 1087
    invoke-static {v0, v1, v5, p1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    .local v4, "a":[Ljava/lang/Object;, "[TT;"
    goto :goto_20

    .line 1090
    .end local v4    # "a":[Ljava/lang/Object;, "[TT;"
    :cond_15
    sub-int v4, v5, v1

    invoke-static {v0, v3, v4, p1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    .line 1091
    .restart local v4    # "a":[Ljava/lang/Object;, "[TT;"
    array-length v6, v0

    sub-int/2addr v6, v1

    invoke-static {v0, v1, v4, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1093
    :goto_20
    if-eq v5, v2, :cond_27

    .line 1094
    array-length v6, v0

    sub-int/2addr v6, v1

    invoke-static {v0, v3, v4, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1095
    :cond_27
    return-object v4
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 7
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1183
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1186
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1189
    iget-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 1190
    .local v0, "es":[Ljava/lang/Object;
    iget v1, p0, Ljava/util/ArrayDeque;->head:I

    .local v1, "i":I
    iget v2, p0, Ljava/util/ArrayDeque;->tail:I

    .local v2, "end":I
    if-gt v1, v2, :cond_14

    move v3, v2

    goto :goto_15

    :cond_14
    array-length v3, v0

    .line 1192
    .local v3, "to":I
    :goto_15
    if-ge v1, v3, :cond_1f

    .line 1193
    aget-object v4, v0, v1

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1192
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 1194
    :cond_1f
    if-ne v3, v2, :cond_22

    .line 1196
    .end local v1    # "i":I
    .end local v2    # "end":I
    .end local v3    # "to":I
    return-void

    .line 1191
    .restart local v1    # "i":I
    .restart local v2    # "end":I
    .restart local v3    # "to":I
    :cond_22
    const/4 v1, 0x0

    move v3, v2

    goto :goto_15
.end method


# virtual methods
.method public whitelist test-api add(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 501
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 502
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api addAll(Ljava/util/Collection;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 329
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    move v1, v0

    .local v1, "s":I
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v0, v2

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iget-object v3, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v3, v3

    sub-int/2addr v0, v3

    move v3, v0

    .local v3, "needed":I
    if-lez v0, :cond_16

    .line 330
    invoke-direct {p0, v3}, Ljava/util/ArrayDeque;->grow(I)V

    .line 331
    :cond_16
    invoke-direct {p0, p1}, Ljava/util/ArrayDeque;->copyElements(Ljava/util/Collection;)V

    .line 332
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    if-le v0, v1, :cond_20

    goto :goto_21

    :cond_20
    const/4 v2, 0x0

    :goto_21
    return v2
.end method

.method public whitelist test-api addFirst(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 292
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-eqz p1, :cond_1a

    .line 294
    iget-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 295
    .local v0, "es":[Ljava/lang/Object;
    iget v1, p0, Ljava/util/ArrayDeque;->head:I

    array-length v2, v0

    invoke-static {v1, v2}, Ljava/util/ArrayDeque;->dec(II)I

    move-result v1

    iput v1, p0, Ljava/util/ArrayDeque;->head:I

    aput-object p1, v0, v1

    .line 296
    iget v1, p0, Ljava/util/ArrayDeque;->head:I

    iget v2, p0, Ljava/util/ArrayDeque;->tail:I

    if-ne v1, v2, :cond_19

    .line 297
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Ljava/util/ArrayDeque;->grow(I)V

    .line 298
    :cond_19
    return-void

    .line 293
    .end local v0    # "es":[Ljava/lang/Object;
    :cond_1a
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api addLast(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 309
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-eqz p1, :cond_1a

    .line 311
    iget-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 312
    .local v0, "es":[Ljava/lang/Object;
    iget v1, p0, Ljava/util/ArrayDeque;->tail:I

    aput-object p1, v0, v1

    .line 313
    iget v1, p0, Ljava/util/ArrayDeque;->head:I

    iget v2, p0, Ljava/util/ArrayDeque;->tail:I

    array-length v3, v0

    invoke-static {v2, v3}, Ljava/util/ArrayDeque;->inc(II)I

    move-result v2

    iput v2, p0, Ljava/util/ArrayDeque;->tail:I

    if-ne v1, v2, :cond_19

    .line 314
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Ljava/util/ArrayDeque;->grow(I)V

    .line 315
    :cond_19
    return-void

    .line 310
    .end local v0    # "es":[Ljava/lang/Object;
    :cond_1a
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method greylist-max-o checkInvariants()V
    .registers 6

    .line 1226
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    :try_start_0
    iget-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v0, v0
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_5

    .line 1240
    nop

    .line 1241
    return-void

    .line 1234
    :catchall_5
    move-exception v0

    .line 1235
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    iget v2, p0, Ljava/util/ArrayDeque;->head:I

    .line 1236
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Ljava/util/ArrayDeque;->tail:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    .line 1235
    const-string v3, "head=%d tail=%d capacity=%d%n"

    invoke-virtual {v1, v3, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 1237
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    iget-object v2, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 1238
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 1237
    const-string v3, "elements=%s%n"

    invoke-virtual {v1, v3, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 1239
    throw v0
.end method

.method public whitelist test-api clear()V
    .registers 4

    .line 1046
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    iget-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/ArrayDeque;->head:I

    iget v2, p0, Ljava/util/ArrayDeque;->tail:I

    invoke-static {v0, v1, v2}, Ljava/util/ArrayDeque;->circularClear([Ljava/lang/Object;II)V

    .line 1047
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/ArrayDeque;->tail:I

    iput v0, p0, Ljava/util/ArrayDeque;->head:I

    .line 1048
    return-void
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 88
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->clone()Ljava/util/ArrayDeque;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api clone()Ljava/util/ArrayDeque;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayDeque<",
            "TE;>;"
        }
    .end annotation

    .line 1160
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayDeque;

    .line 1161
    .local v0, "result":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    iget-object v1, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget-object v2, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_11} :catch_12

    .line 1162
    return-object v0

    .line 1163
    .end local v0    # "result":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    :catch_12
    move-exception v0

    .line 1164
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 1011
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    if-eqz p1, :cond_22

    .line 1012
    iget-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 1013
    .local v0, "es":[Ljava/lang/Object;
    iget v1, p0, Ljava/util/ArrayDeque;->head:I

    .local v1, "i":I
    iget v2, p0, Ljava/util/ArrayDeque;->tail:I

    .local v2, "end":I
    if-gt v1, v2, :cond_c

    move v3, v2

    goto :goto_d

    :cond_c
    array-length v3, v0

    .line 1015
    .local v3, "to":I
    :goto_d
    if-ge v1, v3, :cond_1c

    .line 1016
    aget-object v4, v0, v1

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 1017
    const/4 v4, 0x1

    return v4

    .line 1015
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 1018
    :cond_1c
    if-ne v3, v2, :cond_1f

    goto :goto_22

    .line 1014
    :cond_1f
    const/4 v1, 0x0

    move v3, v2

    goto :goto_d

    .line 1021
    .end local v0    # "es":[Ljava/lang/Object;
    .end local v1    # "i":I
    .end local v2    # "end":I
    .end local v3    # "to":I
    :cond_22
    :goto_22
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o delete(I)Z
    .registers 13
    .param p1, "i"    # I

    .line 614
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    iget-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 615
    .local v0, "es":[Ljava/lang/Object;
    array-length v1, v0

    .line 618
    .local v1, "capacity":I
    iget v2, p0, Ljava/util/ArrayDeque;->head:I

    move v3, v2

    .local v3, "h":I
    invoke-static {p1, v2, v1}, Ljava/util/ArrayDeque;->sub(III)I

    move-result v2

    .line 620
    .local v2, "front":I
    iget v4, p0, Ljava/util/ArrayDeque;->tail:I

    move v5, v4

    .local v5, "t":I
    invoke-static {v4, p1, v1}, Ljava/util/ArrayDeque;->sub(III)I

    move-result v4

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    .line 621
    .local v4, "back":I
    const/4 v7, 0x0

    const/4 v8, 0x0

    if-ge v2, v4, :cond_3a

    .line 623
    if-gt v3, p1, :cond_1f

    .line 624
    add-int/lit8 v6, v3, 0x1

    invoke-static {v0, v3, v0, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_31

    .line 626
    :cond_1f
    invoke-static {v0, v8, v0, v6, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 627
    add-int/lit8 v6, v1, -0x1

    aget-object v6, v0, v6

    aput-object v6, v0, v8

    .line 628
    add-int/lit8 v6, v3, 0x1

    add-int/lit8 v9, p1, 0x1

    sub-int v9, v2, v9

    invoke-static {v0, v3, v0, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 630
    :goto_31
    aput-object v7, v0, v3

    .line 631
    invoke-static {v3, v1}, Ljava/util/ArrayDeque;->inc(II)I

    move-result v6

    iput v6, p0, Ljava/util/ArrayDeque;->head:I

    .line 632
    return v8

    .line 635
    :cond_3a
    invoke-static {v5, v1}, Ljava/util/ArrayDeque;->dec(II)I

    move-result v9

    iput v9, p0, Ljava/util/ArrayDeque;->tail:I

    .line 636
    iget v9, p0, Ljava/util/ArrayDeque;->tail:I

    if-gt p1, v9, :cond_4a

    .line 637
    add-int/lit8 v8, p1, 0x1

    invoke-static {v0, v8, v0, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5e

    .line 639
    :cond_4a
    add-int/lit8 v9, p1, 0x1

    add-int/lit8 v10, p1, 0x1

    sub-int v10, v1, v10

    invoke-static {v0, v9, v0, p1, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 640
    add-int/lit8 v9, v1, -0x1

    aget-object v10, v0, v8

    aput-object v10, v0, v9

    .line 641
    add-int/lit8 v9, v5, -0x1

    invoke-static {v0, v6, v0, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 643
    :goto_5e
    iget v8, p0, Ljava/util/ArrayDeque;->tail:I

    aput-object v7, v0, v8

    .line 644
    return v6
.end method

.method public whitelist test-api descendingIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 681
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    new-instance v0, Ljava/util/ArrayDeque$DescendingIterator;

    invoke-direct {v0, p0}, Ljava/util/ArrayDeque$DescendingIterator;-><init>(Ljava/util/ArrayDeque;)V

    return-object v0
.end method

.method public whitelist test-api element()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 558
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api forEach(Ljava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 891
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    iget-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 893
    .local v0, "es":[Ljava/lang/Object;
    iget v1, p0, Ljava/util/ArrayDeque;->head:I

    .local v1, "i":I
    iget v2, p0, Ljava/util/ArrayDeque;->tail:I

    .local v2, "end":I
    if-gt v1, v2, :cond_d

    move v3, v2

    goto :goto_e

    :cond_d
    array-length v3, v0

    .line 895
    .local v3, "to":I
    :goto_e
    if-ge v1, v3, :cond_1a

    .line 896
    invoke-static {v0, v1}, Ljava/util/ArrayDeque;->elementAt([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 895
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 897
    :cond_1a
    if-ne v3, v2, :cond_27

    .line 898
    iget v4, p0, Ljava/util/ArrayDeque;->tail:I

    if-ne v2, v4, :cond_21

    .line 902
    .end local v1    # "i":I
    .end local v2    # "end":I
    .end local v3    # "to":I
    return-void

    .line 898
    .restart local v1    # "i":I
    .restart local v2    # "end":I
    .restart local v3    # "to":I
    :cond_21
    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4

    .line 894
    :cond_27
    const/4 v1, 0x0

    move v3, v2

    goto :goto_e
.end method

.method public whitelist test-api getFirst()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 407
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    iget-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/ArrayDeque;->head:I

    invoke-static {v0, v1}, Ljava/util/ArrayDeque;->elementAt([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 408
    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_b

    .line 410
    return-object v0

    .line 409
    :cond_b
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public whitelist test-api getLast()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 417
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    iget-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 418
    .local v0, "es":[Ljava/lang/Object;
    iget v1, p0, Ljava/util/ArrayDeque;->tail:I

    array-length v2, v0

    invoke-static {v1, v2}, Ljava/util/ArrayDeque;->dec(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/ArrayDeque;->elementAt([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .line 419
    .local v1, "e":Ljava/lang/Object;, "TE;"
    if-eqz v1, :cond_10

    .line 421
    return-object v1

    .line 420
    :cond_10
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2
.end method

.method public whitelist test-api isEmpty()Z
    .registers 3

    .line 665
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    iget v0, p0, Ljava/util/ArrayDeque;->head:I

    iget v1, p0, Ljava/util/ArrayDeque;->tail:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 677
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    new-instance v0, Ljava/util/ArrayDeque$DeqIterator;

    invoke-direct {v0, p0}, Ljava/util/ArrayDeque$DeqIterator;-><init>(Ljava/util/ArrayDeque;)V

    return-object v0
.end method

.method public whitelist test-api offer(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 515
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->offerLast(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api offerFirst(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 347
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 348
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api offerLast(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 359
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 360
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api peek()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 571
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api peekFirst()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 425
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    iget-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/ArrayDeque;->head:I

    invoke-static {v0, v1}, Ljava/util/ArrayDeque;->elementAt([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api peekLast()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 430
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    iget-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    move-object v1, v0

    .local v1, "es":[Ljava/lang/Object;
    iget v2, p0, Ljava/util/ArrayDeque;->tail:I

    array-length v3, v1

    invoke-static {v2, v3}, Ljava/util/ArrayDeque;->dec(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/util/ArrayDeque;->elementAt([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api poll()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 544
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api pollFirst()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 386
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    iget-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    move-object v1, v0

    .local v1, "es":[Ljava/lang/Object;
    iget v2, p0, Ljava/util/ArrayDeque;->head:I

    move v3, v2

    .local v3, "h":I
    invoke-static {v0, v2}, Ljava/util/ArrayDeque;->elementAt([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 387
    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_16

    .line 388
    const/4 v2, 0x0

    aput-object v2, v1, v3

    .line 389
    array-length v2, v1

    invoke-static {v3, v2}, Ljava/util/ArrayDeque;->inc(II)I

    move-result v2

    iput v2, p0, Ljava/util/ArrayDeque;->head:I

    .line 391
    :cond_16
    return-object v0
.end method

.method public whitelist test-api pollLast()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 397
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    iget-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    move-object v1, v0

    .local v1, "es":[Ljava/lang/Object;
    iget v2, p0, Ljava/util/ArrayDeque;->tail:I

    array-length v3, v1

    invoke-static {v2, v3}, Ljava/util/ArrayDeque;->dec(II)I

    move-result v2

    move v3, v2

    .local v3, "t":I
    invoke-static {v0, v2}, Ljava/util/ArrayDeque;->elementAt([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 398
    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_16

    .line 399
    iput v3, p0, Ljava/util/ArrayDeque;->tail:I

    const/4 v2, 0x0

    aput-object v2, v1, v3

    .line 400
    :cond_16
    return-object v0
.end method

.method public whitelist test-api pop()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 600
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api push(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 586
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 587
    return-void
.end method

.method public whitelist test-api remove()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 530
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 1038
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->removeFirstOccurrence(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api removeAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 916
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    new-instance v0, Ljava/util/ArrayDeque$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Ljava/util/ArrayDeque$$ExternalSyntheticLambda2;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Ljava/util/ArrayDeque;->bulkRemove(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api removeFirst()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 367
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    .line 368
    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_7

    .line 370
    return-object v0

    .line 369
    :cond_7
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public whitelist test-api removeFirstOccurrence(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 446
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    if-eqz p1, :cond_25

    .line 447
    iget-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 448
    .local v0, "es":[Ljava/lang/Object;
    iget v1, p0, Ljava/util/ArrayDeque;->head:I

    .local v1, "i":I
    iget v2, p0, Ljava/util/ArrayDeque;->tail:I

    .local v2, "end":I
    if-gt v1, v2, :cond_c

    move v3, v2

    goto :goto_d

    :cond_c
    array-length v3, v0

    .line 450
    .local v3, "to":I
    :goto_d
    if-ge v1, v3, :cond_1f

    .line 451
    aget-object v4, v0, v1

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 452
    invoke-virtual {p0, v1}, Ljava/util/ArrayDeque;->delete(I)Z

    .line 453
    const/4 v4, 0x1

    return v4

    .line 450
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 455
    :cond_1f
    if-ne v3, v2, :cond_22

    goto :goto_25

    .line 449
    :cond_22
    const/4 v1, 0x0

    move v3, v2

    goto :goto_d

    .line 458
    .end local v0    # "es":[Ljava/lang/Object;
    .end local v1    # "i":I
    .end local v2    # "end":I
    .end local v3    # "to":I
    :cond_25
    :goto_25
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api removeIf(Ljava/util/function/Predicate;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 908
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 909
    invoke-direct {p0, p1}, Ljava/util/ArrayDeque;->bulkRemove(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api removeLast()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 377
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->pollLast()Ljava/lang/Object;

    move-result-object v0

    .line 378
    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_7

    .line 380
    return-object v0

    .line 379
    :cond_7
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public whitelist test-api removeLastOccurrence(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 474
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_27

    .line 475
    iget-object v1, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 476
    .local v1, "es":[Ljava/lang/Object;
    iget v2, p0, Ljava/util/ArrayDeque;->tail:I

    .local v2, "i":I
    iget v3, p0, Ljava/util/ArrayDeque;->head:I

    .local v3, "end":I
    if-lt v2, v3, :cond_d

    move v4, v3

    goto :goto_e

    :cond_d
    move v4, v0

    .line 478
    .local v4, "to":I
    :cond_e
    :goto_e
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v5, v4, -0x1

    if-le v2, v5, :cond_21

    .line 479
    aget-object v5, v1, v2

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 480
    invoke-virtual {p0, v2}, Ljava/util/ArrayDeque;->delete(I)Z

    .line 481
    const/4 v0, 0x1

    return v0

    .line 483
    :cond_21
    if-ne v4, v3, :cond_24

    goto :goto_27

    .line 477
    :cond_24
    array-length v2, v1

    move v4, v3

    goto :goto_e

    .line 486
    .end local v1    # "es":[Ljava/lang/Object;
    .end local v2    # "i":I
    .end local v3    # "end":I
    .end local v4    # "to":I
    :cond_27
    :goto_27
    return v0
.end method

.method public whitelist test-api retainAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 924
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    new-instance v0, Ljava/util/ArrayDeque$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Ljava/util/ArrayDeque$$ExternalSyntheticLambda0;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Ljava/util/ArrayDeque;->bulkRemove(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api size()I
    .registers 4

    .line 656
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    iget v0, p0, Ljava/util/ArrayDeque;->tail:I

    iget v1, p0, Ljava/util/ArrayDeque;->head:I

    iget-object v2, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v2, v2

    invoke-static {v0, v1, v2}, Ljava/util/ArrayDeque;->sub(III)I

    move-result v0

    return v0
.end method

.method public whitelist test-api spliterator()Ljava/util/Spliterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 805
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    new-instance v0, Ljava/util/ArrayDeque$DeqSpliterator;

    invoke-direct {v0, p0}, Ljava/util/ArrayDeque$DeqSpliterator;-><init>(Ljava/util/ArrayDeque;)V

    return-object v0
.end method

.method public whitelist test-api toArray()[Ljava/lang/Object;
    .registers 2

    .line 1078
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    const-class v0, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Ljava/util/ArrayDeque;->toArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 1137
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    move v1, v0

    .local v1, "size":I
    array-length v2, p1

    if-le v0, v2, :cond_11

    .line 1138
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayDeque;->toArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1139
    :cond_11
    iget-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 1140
    .local v0, "es":[Ljava/lang/Object;
    iget v2, p0, Ljava/util/ArrayDeque;->head:I

    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    array-length v4, v0

    sub-int/2addr v4, v2

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1142
    .local v4, "len":I
    :goto_1c
    invoke-static {v0, v2, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1143
    add-int v5, v3, v4

    move v3, v5

    if-ne v5, v1, :cond_2b

    .line 1145
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v4    # "len":I
    array-length v2, p1

    if-ge v1, v2, :cond_2a

    .line 1146
    const/4 v2, 0x0

    aput-object v2, p1, v1

    .line 1147
    :cond_2a
    return-object p1

    .line 1141
    .restart local v2    # "i":I
    .restart local v3    # "j":I
    .restart local v4    # "len":I
    :cond_2b
    const/4 v2, 0x0

    iget v4, p0, Ljava/util/ArrayDeque;->tail:I

    goto :goto_1c
.end method

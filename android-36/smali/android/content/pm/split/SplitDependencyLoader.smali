.class public abstract Landroid/content/pm/split/SplitDependencyLoader;
.super Ljava/lang/Object;
.source "SplitDependencyLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Exception;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final blacklist mDependencies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor blacklist <init>(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "[I>;)V"
        }
    .end annotation

    .line 49
    .local p0, "this":Landroid/content/pm/split/SplitDependencyLoader;, "Landroid/content/pm/split/SplitDependencyLoader<TE;>;"
    .local p1, "dependencies":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Landroid/content/pm/split/SplitDependencyLoader;->mDependencies:Landroid/util/SparseArray;

    .line 51
    return-void
.end method

.method private static blacklist append([II)[I
    .registers 4
    .param p0, "src"    # [I
    .param p1, "elem"    # I

    .line 144
    if-nez p0, :cond_7

    .line 145
    filled-new-array {p1}, [I

    move-result-object v0

    return-object v0

    .line 147
    :cond_7
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    .line 148
    .local v0, "dst":[I
    array-length v1, p0

    aput p1, v0, v1

    .line 149
    return-object v0
.end method

.method private blacklist collectConfigSplitIndices(I)[I
    .registers 5
    .param p1, "splitIdx"    # I

    .line 109
    .local p0, "this":Landroid/content/pm/split/SplitDependencyLoader;, "Landroid/content/pm/split/SplitDependencyLoader<TE;>;"
    iget-object v0, p0, Landroid/content/pm/split/SplitDependencyLoader;->mDependencies:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 110
    .local v0, "deps":[I
    if-eqz v0, :cond_15

    array-length v1, v0

    const/4 v2, 0x1

    if-gt v1, v2, :cond_f

    goto :goto_15

    .line 113
    :cond_f
    array-length v1, v0

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v1

    return-object v1

    .line 111
    :cond_15
    :goto_15
    sget-object v1, Llibcore/util/EmptyArray;->INT:[I

    return-object v1
.end method

.method public static blacklist createDependenciesFromPackage(Landroid/content/pm/parsing/PackageLite;)Landroid/util/SparseArray;
    .registers 13
    .param p0, "pkg"    # Landroid/content/pm/parsing/PackageLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/PackageLite;",
            ")",
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;
        }
    .end annotation

    .line 166
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 169
    .local v0, "splitDependencies":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    const/4 v1, -0x1

    filled-new-array {v1}, [I

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 173
    const/4 v2, 0x0

    .local v2, "splitIdx":I
    :goto_f
    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    const-string v5, "\', which is missing."

    const-string v6, "Split \'"

    const/4 v7, 0x0

    if-ge v2, v4, :cond_71

    .line 174
    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->getIsFeatureSplits()[Z

    move-result-object v4

    aget-boolean v4, v4, v2

    if-nez v4, :cond_24

    .line 176
    goto :goto_6e

    .line 181
    :cond_24
    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->getUsesSplitNames()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v2

    .line 182
    .local v4, "splitDependency":Ljava/lang/String;
    if-eqz v4, :cond_64

    .line 183
    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v4}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    .line 184
    .local v8, "depIdx":I
    if-ltz v8, :cond_39

    .line 188
    add-int/lit8 v8, v8, 0x1

    .line 189
    .local v8, "targetIdx":I
    goto :goto_65

    .line 185
    .local v8, "depIdx":I
    :cond_39
    new-instance v1, Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v2

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\' requires split \'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v7}, Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;-><init>(Ljava/lang/String;Landroid/content/pm/split/SplitDependencyLoader-IA;)V

    throw v1

    .line 191
    .end local v8    # "depIdx":I
    :cond_64
    const/4 v8, 0x0

    .line 193
    .local v8, "targetIdx":I
    :goto_65
    add-int/lit8 v5, v2, 0x1

    filled-new-array {v8}, [I

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 173
    .end local v4    # "splitDependency":Ljava/lang/String;
    .end local v8    # "targetIdx":I
    :goto_6e
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 200
    .end local v2    # "splitIdx":I
    :cond_71
    const/4 v2, 0x0

    .restart local v2    # "splitIdx":I
    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    .local v4, "size":I
    :goto_77
    if-ge v2, v4, :cond_113

    .line 201
    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->getIsFeatureSplits()[Z

    move-result-object v8

    aget-boolean v8, v8, v2

    if-eqz v8, :cond_83

    .line 203
    goto/16 :goto_10f

    .line 208
    :cond_83
    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->getConfigForSplit()[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v2

    .line 209
    .local v8, "configForSplit":Ljava/lang/String;
    if-eqz v8, :cond_fe

    .line 210
    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v8}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v9

    .line 211
    .local v9, "depIdx":I
    if-ltz v9, :cond_d3

    .line 216
    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->getIsFeatureSplits()[Z

    move-result-object v10

    aget-boolean v10, v10, v9

    if-eqz v10, :cond_a0

    .line 221
    add-int/lit8 v9, v9, 0x1

    .line 222
    .local v9, "targetSplitIdx":I
    goto :goto_ff

    .line 217
    .local v9, "depIdx":I
    :cond_a0
    new-instance v1, Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\' declares itself as configuration split for a non-feature split \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 219
    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v9

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v7}, Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;-><init>(Ljava/lang/String;Landroid/content/pm/split/SplitDependencyLoader-IA;)V

    throw v1

    .line 212
    :cond_d3
    new-instance v1, Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v2

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\' targets split \'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v7}, Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;-><init>(Ljava/lang/String;Landroid/content/pm/split/SplitDependencyLoader-IA;)V

    throw v1

    .line 223
    .end local v9    # "depIdx":I
    :cond_fe
    const/4 v9, 0x0

    .line 225
    .local v9, "targetSplitIdx":I
    :goto_ff
    nop

    .line 226
    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    add-int/lit8 v11, v2, 0x1

    invoke-static {v10, v11}, Landroid/content/pm/split/SplitDependencyLoader;->append([II)[I

    move-result-object v10

    .line 225
    invoke-virtual {v0, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 200
    .end local v8    # "configForSplit":Ljava/lang/String;
    .end local v9    # "targetSplitIdx":I
    :goto_10f
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_77

    .line 230
    .end local v2    # "splitIdx":I
    .end local v4    # "size":I
    :cond_113
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2}, Ljava/util/BitSet;-><init>()V

    .line 231
    .local v2, "bitset":Ljava/util/BitSet;
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v5

    .local v5, "size":I
    :goto_11d
    if-ge v4, v5, :cond_14a

    .line 232
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 234
    .local v6, "splitIdx":I
    invoke-virtual {v2}, Ljava/util/BitSet;->clear()V

    .line 235
    :goto_126
    if-eq v6, v1, :cond_147

    .line 237
    invoke-virtual {v2, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-nez v8, :cond_13f

    .line 242
    invoke-virtual {v2, v6}, Ljava/util/BitSet;->set(I)V

    .line 245
    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    .line 246
    .local v8, "deps":[I
    if-eqz v8, :cond_13c

    aget v9, v8, v3

    goto :goto_13d

    :cond_13c
    move v9, v1

    :goto_13d
    move v6, v9

    .line 247
    .end local v8    # "deps":[I
    goto :goto_126

    .line 238
    :cond_13f
    new-instance v1, Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;

    const-string v3, "Cycle detected in split dependencies."

    invoke-direct {v1, v3, v7}, Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;-><init>(Ljava/lang/String;Landroid/content/pm/split/SplitDependencyLoader-IA;)V

    throw v1

    .line 231
    .end local v6    # "splitIdx":I
    :cond_147
    add-int/lit8 v4, v4, 0x1

    goto :goto_11d

    .line 249
    .end local v4    # "i":I
    .end local v5    # "size":I
    :cond_14a
    return-object v0
.end method


# virtual methods
.method protected abstract blacklist constructSplit(I[II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[II)V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract blacklist isSplitCached(I)Z
.end method

.method protected blacklist loadDependenciesForSplit(I)V
    .registers 7
    .param p1, "splitIdx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 63
    .local p0, "this":Landroid/content/pm/split/SplitDependencyLoader;, "Landroid/content/pm/split/SplitDependencyLoader<TE;>;"
    invoke-virtual {p0, p1}, Landroid/content/pm/split/SplitDependencyLoader;->isSplitCached(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 64
    return-void

    .line 68
    :cond_7
    const/4 v0, 0x0

    if-nez p1, :cond_13

    .line 69
    invoke-direct {p0, v0}, Landroid/content/pm/split/SplitDependencyLoader;->collectConfigSplitIndices(I)[I

    move-result-object v1

    .line 70
    .local v1, "configSplitIndices":[I
    const/4 v2, -0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/pm/split/SplitDependencyLoader;->constructSplit(I[II)V

    .line 71
    return-void

    .line 75
    .end local v1    # "configSplitIndices":[I
    :cond_13
    new-instance v1, Landroid/util/IntArray;

    invoke-direct {v1}, Landroid/util/IntArray;-><init>()V

    .line 76
    .local v1, "linearDependencies":Landroid/util/IntArray;
    invoke-virtual {v1, p1}, Landroid/util/IntArray;->add(I)V

    .line 83
    :goto_1b
    iget-object v2, p0, Landroid/content/pm/split/SplitDependencyLoader;->mDependencies:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 84
    .local v2, "deps":[I
    if-eqz v2, :cond_2b

    array-length v3, v2

    if-lez v3, :cond_2b

    .line 85
    aget p1, v2, v0

    goto :goto_2c

    .line 87
    :cond_2b
    const/4 p1, -0x1

    .line 90
    :goto_2c
    if-ltz p1, :cond_39

    invoke-virtual {p0, p1}, Landroid/content/pm/split/SplitDependencyLoader;->isSplitCached(I)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 91
    goto :goto_39

    .line 94
    :cond_35
    invoke-virtual {v1, p1}, Landroid/util/IntArray;->add(I)V

    .line 95
    .end local v2    # "deps":[I
    goto :goto_1b

    .line 98
    :cond_39
    :goto_39
    move v0, p1

    .line 99
    .local v0, "parentIdx":I
    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_40
    if-ltz v2, :cond_51

    .line 100
    invoke-virtual {v1, v2}, Landroid/util/IntArray;->get(I)I

    move-result v3

    .line 101
    .local v3, "idx":I
    invoke-direct {p0, v3}, Landroid/content/pm/split/SplitDependencyLoader;->collectConfigSplitIndices(I)[I

    move-result-object v4

    .line 102
    .local v4, "configSplitIndices":[I
    invoke-virtual {p0, v3, v4, v0}, Landroid/content/pm/split/SplitDependencyLoader;->constructSplit(I[II)V

    .line 103
    move v0, v3

    .line 99
    .end local v3    # "idx":I
    .end local v4    # "configSplitIndices":[I
    add-int/lit8 v2, v2, -0x1

    goto :goto_40

    .line 105
    .end local v2    # "i":I
    :cond_51
    return-void
.end method

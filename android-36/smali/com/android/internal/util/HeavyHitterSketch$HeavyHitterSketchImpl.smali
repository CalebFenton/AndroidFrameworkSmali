.class public final Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;
.super Ljava/lang/Object;
.source "HeavyHitterSketch.java"

# interfaces
.implements Lcom/android/internal/util/HeavyHitterSketch;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/HeavyHitterSketch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HeavyHitterSketchImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/internal/util/HeavyHitterSketch<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private blacklist mCapacity:I

.field private blacklist mConfigured:Z

.field private final blacklist mFrequencies:Landroid/util/SparseIntArray;

.field private blacklist mNumInputs:I

.field private final blacklist mObjects:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "TT;>;"
        }
    .end annotation
.end field

.field private blacklist mPassSize:I

.field private blacklist mTotalSize:I


# direct methods
.method public static synthetic blacklist $r8$lambda$cSRjAKo9UBAVkHgOe5EyIyRVp5Q(Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;Ljava/lang/Integer;Ljava/lang/Integer;)I
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->lambda$getTopHeavyHitters$0(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 110
    .local p0, "this":Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;, "Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mObjects:Landroid/util/SparseArray;

    .line 119
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mFrequencies:Landroid/util/SparseIntArray;

    return-void
.end method

.method private blacklist addToMGSummary(Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 193
    .local p0, "this":Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;, "Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl<TT;>;"
    .local p1, "newInstance":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_9

    :cond_8
    move v1, v0

    .line 194
    .local v1, "hashCode":I
    :goto_9
    iget-object v2, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mObjects:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    .line 196
    .local v2, "index":I
    const/4 v3, 0x1

    if-ltz v2, :cond_1f

    .line 197
    iget-object v4, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mFrequencies:Landroid/util/SparseIntArray;

    iget-object v5, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mFrequencies:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v4, v2, v5}, Landroid/util/SparseIntArray;->setValueAt(II)V

    goto :goto_5a

    .line 198
    :cond_1f
    iget-object v4, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mObjects:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    iget v5, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mCapacity:I

    sub-int/2addr v5, v3

    if-ge v4, v5, :cond_35

    .line 199
    iget-object v4, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mObjects:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 200
    iget-object v4, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mFrequencies:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_5a

    .line 202
    :cond_35
    iget-object v4, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mFrequencies:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    sub-int/2addr v4, v3

    .local v4, "i":I
    :goto_3c
    if-ltz v4, :cond_5a

    .line 203
    iget-object v5, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mFrequencies:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    sub-int/2addr v5, v3

    .line 204
    .local v5, "val":I
    if-nez v5, :cond_52

    .line 205
    iget-object v6, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mObjects:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->removeAt(I)V

    .line 206
    iget-object v6, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mFrequencies:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseIntArray;->removeAt(I)V

    goto :goto_57

    .line 208
    :cond_52
    iget-object v6, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mFrequencies:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v4, v5}, Landroid/util/SparseIntArray;->setValueAt(II)V

    .line 202
    .end local v5    # "val":I
    :goto_57
    add-int/lit8 v4, v4, -0x1

    goto :goto_3c

    .line 212
    .end local v4    # "i":I
    :cond_5a
    :goto_5a
    iget v4, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mNumInputs:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mNumInputs:I

    iget v5, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mPassSize:I

    if-ne v4, v5, :cond_74

    .line 214
    iget-object v4, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mFrequencies:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    sub-int/2addr v4, v3

    .restart local v4    # "i":I
    :goto_6a
    if-ltz v4, :cond_74

    .line 215
    iget-object v3, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mFrequencies:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v4, v0}, Landroid/util/SparseIntArray;->setValueAt(II)V

    .line 214
    add-int/lit8 v4, v4, -0x1

    goto :goto_6a

    .line 218
    .end local v4    # "i":I
    :cond_74
    return-void
.end method

.method private synthetic blacklist lambda$getTopHeavyHitters$0(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .registers 6
    .param p1, "a"    # Ljava/lang/Integer;
    .param p2, "b"    # Ljava/lang/Integer;

    .line 282
    .local p0, "this":Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;, "Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl<TT;>;"
    iget-object v0, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mFrequencies:Landroid/util/SparseIntArray;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mFrequencies:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private blacklist validate(Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 225
    .local p0, "this":Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;, "Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl<TT;>;"
    .local p1, "newInstance":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 226
    .local v0, "hashCode":I
    :goto_8
    iget-object v1, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mObjects:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .line 227
    .local v1, "index":I
    if-ltz v1, :cond_1d

    .line 228
    iget-object v2, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mFrequencies:Landroid/util/SparseIntArray;

    iget-object v3, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mFrequencies:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->setValueAt(II)V

    .line 230
    :cond_1d
    iget v2, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mNumInputs:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mNumInputs:I

    iget v3, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mTotalSize:I

    if-ne v2, v3, :cond_4b

    .line 231
    iget v2, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mPassSize:I

    iget v3, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mCapacity:I

    div-int/2addr v2, v3

    .line 233
    .local v2, "lower":I
    iget-object v3, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mFrequencies:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_34
    if-ltz v3, :cond_4b

    .line 234
    iget-object v4, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mFrequencies:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    .line 235
    .local v4, "val":I
    if-ge v4, v2, :cond_48

    .line 236
    iget-object v5, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mFrequencies:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 237
    iget-object v5, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mObjects:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->removeAt(I)V

    .line 233
    .end local v4    # "val":I
    :cond_48
    add-int/lit8 v3, v3, -0x1

    goto :goto_34

    .line 241
    .end local v2    # "lower":I
    .end local v3    # "i":I
    :cond_4b
    return-void
.end method


# virtual methods
.method public blacklist add(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 172
    .local p0, "this":Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;, "Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl<TT;>;"
    .local p1, "newInstance":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mConfigured:Z

    if-eqz v0, :cond_18

    .line 175
    iget v0, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mNumInputs:I

    iget v1, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mPassSize:I

    if-ge v0, v1, :cond_e

    .line 176
    invoke-direct {p0, p1}, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->addToMGSummary(Ljava/lang/Object;)V

    goto :goto_17

    .line 177
    :cond_e
    iget v0, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mNumInputs:I

    iget v1, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mTotalSize:I

    if-ge v0, v1, :cond_17

    .line 179
    invoke-direct {p0, p1}, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->validate(Ljava/lang/Object;)V

    .line 181
    :cond_17
    :goto_17
    return-void

    .line 173
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public blacklist getCandidates(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 306
    .local p0, "this":Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;, "Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl<TT;>;"
    .local p1, "holder":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-boolean v0, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mConfigured:Z

    if-eqz v0, :cond_2e

    .line 309
    iget v0, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mNumInputs:I

    iget v1, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mPassSize:I

    if-ge v0, v1, :cond_c

    .line 311
    const/4 v0, 0x0

    return-object v0

    .line 314
    :cond_c
    if-eqz p1, :cond_10

    move-object v0, p1

    goto :goto_15

    :cond_10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 315
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :goto_15
    iget-object v1, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mObjects:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_1d
    if-ltz v1, :cond_2d

    .line 316
    iget-object v2, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mObjects:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 317
    .local v2, "obj":Ljava/lang/Object;, "TT;"
    if-eqz v2, :cond_2a

    .line 318
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    .end local v2    # "obj":Ljava/lang/Object;, "TT;"
    :cond_2a
    add-int/lit8 v1, v1, -0x1

    goto :goto_1d

    .line 321
    .end local v1    # "i":I
    :cond_2d
    return-object v0

    .line 307
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_2e
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public blacklist getRequiredValidationInputRatio()F
    .registers 2

    .line 339
    .local p0, "this":Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;, "Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl<TT;>;"
    const/high16 v0, 0x3f000000    # 0.5f

    return v0
.end method

.method public blacklist getTopHeavyHitters(ILjava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 12
    .param p1, "k"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 255
    .local p0, "this":Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;, "Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl<TT;>;"
    .local p2, "holder":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p3, "freqs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    iget-boolean v0, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mConfigured:Z

    if-eqz v0, :cond_94

    .line 259
    iget v0, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mCapacity:I

    if-ge p1, v0, :cond_8e

    .line 263
    iget v0, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mNumInputs:I

    iget v1, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mTotalSize:I

    if-lt v0, v1, :cond_88

    .line 268
    const/4 v0, 0x0

    .line 269
    .local v0, "indexes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mFrequencies:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_17
    if-ltz v1, :cond_33

    .line 270
    iget-object v2, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mFrequencies:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    .line 271
    .local v2, "val":I
    if-lez v2, :cond_30

    .line 272
    if-nez v0, :cond_29

    .line 273
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    .line 275
    :cond_29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    .end local v2    # "val":I
    :cond_30
    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    .line 278
    .end local v1    # "i":I
    :cond_33
    if-nez v0, :cond_37

    .line 279
    const/4 v1, 0x0

    return-object v1

    .line 282
    :cond_37
    new-instance v1, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 284
    if-eqz p2, :cond_43

    move-object v1, p2

    goto :goto_48

    :cond_43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 285
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :goto_48
    if-nez p1, :cond_4f

    iget v2, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mCapacity:I

    add-int/lit8 v2, v2, -0x1

    goto :goto_50

    :cond_4f
    move v2, p1

    :goto_50
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 286
    .local v2, "max":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_59
    if-ge v3, v2, :cond_87

    .line 287
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 288
    .local v4, "index":I
    iget-object v5, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mObjects:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    .line 289
    .local v5, "obj":Ljava/lang/Object;, "TT;"
    if-eqz v5, :cond_84

    .line 290
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    if-eqz p3, :cond_84

    .line 292
    iget-object v6, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mFrequencies:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mPassSize:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {p3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    .end local v4    # "index":I
    .end local v5    # "obj":Ljava/lang/Object;, "TT;"
    :cond_84
    add-int/lit8 v3, v3, 0x1

    goto :goto_59

    .line 296
    .end local v3    # "i":I
    :cond_87
    return-object v1

    .line 265
    .end local v0    # "indexes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v2    # "max":I
    :cond_88
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 260
    :cond_8e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 256
    :cond_94
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public blacklist reset()V
    .registers 2

    .line 329
    .local p0, "this":Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;, "Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl<TT;>;"
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mNumInputs:I

    .line 330
    iget-object v0, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mObjects:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 331
    iget-object v0, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mFrequencies:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 332
    return-void
.end method

.method public blacklist setConfig(II)V
    .registers 5
    .param p1, "inputSize"    # I
    .param p2, "capacity"    # I

    .line 154
    .local p0, "this":Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;, "Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl<TT;>;"
    if-lt p1, p2, :cond_13

    const/4 v0, 0x1

    if-le p1, v0, :cond_13

    .line 158
    invoke-virtual {p0}, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->reset()V

    .line 159
    iput p1, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mTotalSize:I

    .line 160
    shr-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mPassSize:I

    .line 161
    iput p2, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mCapacity:I

    .line 162
    iput-boolean v0, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mConfigured:Z

    .line 163
    return-void

    .line 155
    :cond_13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/util/HeavyHitterSketch$HeavyHitterSketchImpl;->mConfigured:Z

    .line 156
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

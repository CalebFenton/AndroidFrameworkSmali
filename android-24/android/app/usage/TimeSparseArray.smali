.class public Landroid/app/usage/TimeSparseArray;
.super Landroid/util/LongSparseArray;
.source "TimeSparseArray.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/util/LongSparseArray",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 28
    .local p0, "this":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<TE;>;"
    invoke-direct {p0}, Landroid/util/LongSparseArray;-><init>()V

    #@3
    .line 27
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "initialCapacity"    # I

    #@0
    .prologue
    .line 32
    .local p0, "this":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<TE;>;"
    invoke-direct {p0, p1}, Landroid/util/LongSparseArray;-><init>(I)V

    #@3
    .line 31
    return-void
.end method


# virtual methods
.method public closestIndexOnOrAfter(J)I
    .locals 7
    .param p1, "time"    # J

    #@0
    .prologue
    .line 45
    .local p0, "this":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<TE;>;"
    invoke-virtual {p0}, Landroid/app/usage/TimeSparseArray;->size()I

    #@3
    move-result v5

    #@4
    .line 46
    .local v5, "size":I
    const/4 v1, 0x0

    #@5
    .line 47
    .local v1, "lo":I
    add-int/lit8 v0, v5, -0x1

    #@7
    .line 48
    .local v0, "hi":I
    const/4 v4, -0x1

    #@8
    .line 49
    .local v4, "mid":I
    const-wide/16 v2, -0x1

    #@a
    .line 50
    .local v2, "key":J
    :goto_0
    if-gt v1, v0, :cond_2

    #@c
    .line 51
    sub-int v6, v0, v1

    #@e
    div-int/lit8 v6, v6, 0x2

    #@10
    add-int v4, v1, v6

    #@12
    .line 52
    invoke-virtual {p0, v4}, Landroid/app/usage/TimeSparseArray;->keyAt(I)J

    #@15
    move-result-wide v2

    #@16
    .line 54
    cmp-long v6, p1, v2

    #@18
    if-lez v6, :cond_0

    #@1a
    .line 55
    add-int/lit8 v1, v4, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 56
    :cond_0
    cmp-long v6, p1, v2

    #@1f
    if-gez v6, :cond_1

    #@21
    .line 57
    add-int/lit8 v0, v4, -0x1

    #@23
    goto :goto_0

    #@24
    .line 59
    :cond_1
    return v4

    #@25
    .line 63
    :cond_2
    cmp-long v6, p1, v2

    #@27
    if-gez v6, :cond_3

    #@29
    .line 64
    return v4

    #@2a
    .line 65
    :cond_3
    cmp-long v6, p1, v2

    #@2c
    if-lez v6, :cond_4

    #@2e
    if-ge v1, v5, :cond_4

    #@30
    .line 66
    return v1

    #@31
    .line 68
    :cond_4
    const/4 v6, -0x1

    #@32
    return v6
.end method

.method public closestIndexOnOrBefore(J)I
    .locals 5
    .param p1, "time"    # J

    #@0
    .prologue
    .line 80
    .local p0, "this":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<TE;>;"
    invoke-virtual {p0, p1, p2}, Landroid/app/usage/TimeSparseArray;->closestIndexOnOrAfter(J)I

    #@3
    move-result v0

    #@4
    .line 81
    .local v0, "index":I
    if-gez v0, :cond_0

    #@6
    .line 83
    invoke-virtual {p0}, Landroid/app/usage/TimeSparseArray;->size()I

    #@9
    move-result v1

    #@a
    add-int/lit8 v1, v1, -0x1

    #@c
    return v1

    #@d
    .line 86
    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/usage/TimeSparseArray;->keyAt(I)J

    #@10
    move-result-wide v2

    #@11
    cmp-long v1, v2, p1

    #@13
    if-nez v1, :cond_1

    #@15
    .line 87
    return v0

    #@16
    .line 89
    :cond_1
    add-int/lit8 v1, v0, -0x1

    #@18
    return v1
.end method

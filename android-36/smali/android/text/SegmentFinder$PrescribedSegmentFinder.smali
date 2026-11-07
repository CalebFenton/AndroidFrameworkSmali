.class public Landroid/text/SegmentFinder$PrescribedSegmentFinder;
.super Landroid/text/SegmentFinder;
.source "SegmentFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/SegmentFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrescribedSegmentFinder"
.end annotation


# instance fields
.field private final blacklist mSegments:[I


# direct methods
.method public constructor whitelist <init>([I)V
    .registers 2
    .param p1, "segments"    # [I

    .line 91
    invoke-direct {p0}, Landroid/text/SegmentFinder;-><init>()V

    .line 92
    invoke-static {p1}, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->checkSegmentsValid([I)V

    .line 93
    iput-object p1, p0, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->mSegments:[I

    .line 94
    return-void
.end method

.method private static blacklist checkSegmentsValid([I)V
    .registers 5
    .param p0, "segments"    # [I

    .line 198
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    array-length v0, p0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    const-string/jumbo v1, "the length of segments must be even"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 201
    array-length v0, p0

    if-nez v0, :cond_15

    return-void

    .line 202
    :cond_15
    const/high16 v0, -0x80000000

    .line 203
    .local v0, "lastSegmentEnd":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_18
    array-length v2, p0

    if-ge v1, v2, :cond_40

    .line 204
    aget v2, p0, v1

    if-lt v2, v0, :cond_37

    .line 207
    aget v2, p0, v1

    add-int/lit8 v3, v1, 0x1

    aget v3, p0, v3

    if-ge v2, v3, :cond_2e

    .line 210
    add-int/lit8 v2, v1, 0x1

    aget v0, p0, v2

    .line 203
    add-int/lit8 v1, v1, 0x2

    goto :goto_18

    .line 208
    :cond_2e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "the segment range can\'t be empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 205
    :cond_37
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "segments can\'t overlap"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 212
    .end local v1    # "index":I
    :cond_40
    return-void
.end method

.method private blacklist findNext(IZ)I
    .registers 9
    .param p1, "offset"    # I
    .param p2, "isStart"    # Z

    .line 121
    const/4 v0, -0x1

    if-gez p1, :cond_4

    return v0

    .line 122
    :cond_4
    iget-object v1, p0, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->mSegments:[I

    array-length v1, v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_65

    iget-object v1, p0, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->mSegments:[I

    iget-object v3, p0, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->mSegments:[I

    array-length v3, v3

    sub-int/2addr v3, v2

    aget v1, v1, v3

    if-le p1, v1, :cond_15

    goto :goto_65

    .line 124
    :cond_15
    iget-object v1, p0, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->mSegments:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    if-ge p1, v1, :cond_26

    .line 125
    iget-object v0, p0, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->mSegments:[I

    if-eqz p2, :cond_23

    aget v0, v0, v3

    goto :goto_25

    :cond_23
    aget v0, v0, v2

    :goto_25
    return v0

    .line 128
    :cond_26
    iget-object v1, p0, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->mSegments:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v1

    .line 129
    .local v1, "index":I
    if-ltz v1, :cond_41

    .line 133
    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->mSegments:[I

    array-length v5, v5

    if-ge v4, v5, :cond_3f

    iget-object v4, p0, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->mSegments:[I

    add-int/lit8 v5, v1, 0x1

    aget v4, v4, v5

    if-ne v4, p1, :cond_3f

    .line 134
    add-int/lit8 v1, v1, 0x1

    .line 137
    :cond_3f
    add-int/2addr v1, v2

    goto :goto_44

    .line 141
    :cond_41
    add-int/lit8 v4, v1, 0x1

    neg-int v1, v4

    .line 143
    :goto_44
    iget-object v4, p0, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->mSegments:[I

    array-length v4, v4

    if-lt v1, v4, :cond_4a

    return v0

    .line 152
    :cond_4a
    rem-int/lit8 v4, v1, 0x2

    if-nez v4, :cond_4f

    goto :goto_50

    :cond_4f
    move v2, v3

    .line 153
    .local v2, "indexIsStart":Z
    :goto_50
    if-eq p2, v2, :cond_60

    .line 154
    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->mSegments:[I

    array-length v4, v4

    if-ge v3, v4, :cond_5f

    iget-object v0, p0, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->mSegments:[I

    add-int/lit8 v3, v1, 0x1

    aget v0, v0, v3

    :cond_5f
    return v0

    .line 156
    :cond_60
    iget-object v0, p0, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->mSegments:[I

    aget v0, v0, v1

    return v0

    .line 122
    .end local v1    # "index":I
    .end local v2    # "indexIsStart":Z
    :cond_65
    :goto_65
    return v0
.end method

.method private blacklist findPrevious(IZ)I
    .registers 9
    .param p1, "offset"    # I
    .param p2, "isStart"    # Z

    .line 160
    iget-object v0, p0, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->mSegments:[I

    array-length v0, v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-lt v0, v2, :cond_5e

    iget-object v0, p0, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->mSegments:[I

    const/4 v3, 0x0

    aget v0, v0, v3

    if-ge p1, v0, :cond_f

    goto :goto_5e

    .line 162
    :cond_f
    iget-object v0, p0, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->mSegments:[I

    iget-object v4, p0, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->mSegments:[I

    array-length v4, v4

    sub-int/2addr v4, v2

    aget v0, v0, v4

    if-le p1, v0, :cond_2a

    .line 163
    iget-object v0, p0, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->mSegments:[I

    iget-object v1, p0, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->mSegments:[I

    if-eqz p2, :cond_25

    array-length v1, v1

    add-int/lit8 v1, v1, -0x2

    aget v0, v0, v1

    goto :goto_29

    :cond_25
    array-length v1, v1

    sub-int/2addr v1, v2

    aget v0, v0, v1

    :goto_29
    return v0

    .line 166
    :cond_2a
    iget-object v0, p0, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->mSegments:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 167
    .local v0, "index":I
    if-ltz v0, :cond_40

    .line 171
    if-lez v0, :cond_3e

    iget-object v4, p0, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->mSegments:[I

    add-int/lit8 v5, v0, -0x1

    aget v4, v4, v5

    if-ne v4, p1, :cond_3e

    .line 172
    add-int/lit8 v0, v0, -0x1

    .line 175
    :cond_3e
    add-int/2addr v0, v1

    goto :goto_45

    .line 179
    :cond_40
    add-int/lit8 v4, v0, 0x1

    neg-int v4, v4

    add-int/lit8 v0, v4, -0x1

    .line 181
    :goto_45
    if-gez v0, :cond_48

    return v1

    .line 190
    :cond_48
    rem-int/lit8 v4, v0, 0x2

    if-nez v4, :cond_4d

    goto :goto_4e

    :cond_4d
    move v2, v3

    .line 191
    .local v2, "indexIsStart":Z
    :goto_4e
    if-eq p2, v2, :cond_59

    .line 192
    if-lez v0, :cond_58

    iget-object v1, p0, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->mSegments:[I

    add-int/lit8 v3, v0, -0x1

    aget v1, v1, v3

    :cond_58
    return v1

    .line 194
    :cond_59
    iget-object v1, p0, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->mSegments:[I

    aget v1, v1, v0

    return v1

    .line 160
    .end local v0    # "index":I
    .end local v2    # "indexIsStart":Z
    :cond_5e
    :goto_5e
    return v1
.end method


# virtual methods
.method public whitelist nextEndBoundary(I)I
    .registers 3
    .param p1, "offset"    # I

    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->findNext(IZ)I

    move-result v0

    return v0
.end method

.method public whitelist nextStartBoundary(I)I
    .registers 3
    .param p1, "offset"    # I

    .line 111
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->findNext(IZ)I

    move-result v0

    return v0
.end method

.method public whitelist previousEndBoundary(I)I
    .registers 3
    .param p1, "offset"    # I

    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->findPrevious(IZ)I

    move-result v0

    return v0
.end method

.method public whitelist previousStartBoundary(I)I
    .registers 3
    .param p1, "offset"    # I

    .line 99
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->findPrevious(IZ)I

    move-result v0

    return v0
.end method

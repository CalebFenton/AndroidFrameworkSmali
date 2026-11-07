.class public final Lcom/android/internal/widget/NotificationProgressModel;
.super Ljava/lang/Object;
.source "NotificationProgressModel.java"


# static fields
.field public static final blacklist INVALID_COLOR:I = 0x0

.field private static final blacklist KEY_INDETERMINATE_COLOR:Ljava/lang/String; = "indeterminateColor"

.field private static final blacklist KEY_IS_STYLED_BY_PROGRESS:Ljava/lang/String; = "isStyledByProgress"

.field private static final blacklist KEY_POINTS:Ljava/lang/String; = "points"

.field private static final blacklist KEY_PROGRESS:Ljava/lang/String; = "progress"

.field private static final blacklist KEY_SEGMENTS:Ljava/lang/String; = "segments"

.field private static final blacklist KEY_SEGMENTS_FALLBACK_COLOR:Ljava/lang/String; = "segmentsFallColor"


# instance fields
.field private final blacklist mIndeterminateColor:I

.field private final blacklist mIsStyledByProgress:Z

.field private final blacklist mPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Notification$ProgressStyle$Point;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mProgress:I

.field private final blacklist mSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Notification$ProgressStyle$Segment;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSegmentsFallbackColor:I


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 4
    .param p1, "indeterminateColor"    # I

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    if-eqz p1, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    move v1, v0

    :goto_9
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 85
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/NotificationProgressModel;->mSegments:Ljava/util/List;

    .line 86
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/NotificationProgressModel;->mPoints:Ljava/util/List;

    .line 87
    iput v0, p0, Lcom/android/internal/widget/NotificationProgressModel;->mProgress:I

    .line 88
    iput-boolean v0, p0, Lcom/android/internal/widget/NotificationProgressModel;->mIsStyledByProgress:Z

    .line 89
    iput v0, p0, Lcom/android/internal/widget/NotificationProgressModel;->mSegmentsFallbackColor:I

    .line 90
    iput p1, p0, Lcom/android/internal/widget/NotificationProgressModel;->mIndeterminateColor:I

    .line 91
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;Ljava/util/List;IZI)V
    .registers 9
    .param p3, "progress"    # I
    .param p4, "isStyledByProgress"    # Z
    .param p5, "segmentsFallbackColor"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification$ProgressStyle$Segment;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/Notification$ProgressStyle$Point;",
            ">;IZI)V"
        }
    .end annotation

    .line 70
    .local p1, "segments":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$ProgressStyle$Segment;>;"
    .local p2, "points":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$ProgressStyle$Point;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p3, :cond_9

    move v2, v0

    goto :goto_a

    :cond_9
    move v2, v1

    :goto_a
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 72
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    xor-int/2addr v0, v2

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 73
    iput-object p1, p0, Lcom/android/internal/widget/NotificationProgressModel;->mSegments:Ljava/util/List;

    .line 74
    iput-object p2, p0, Lcom/android/internal/widget/NotificationProgressModel;->mPoints:Ljava/util/List;

    .line 75
    iput p3, p0, Lcom/android/internal/widget/NotificationProgressModel;->mProgress:I

    .line 76
    iput-boolean p4, p0, Lcom/android/internal/widget/NotificationProgressModel;->mIsStyledByProgress:Z

    .line 77
    iput p5, p0, Lcom/android/internal/widget/NotificationProgressModel;->mSegmentsFallbackColor:I

    .line 78
    iput v1, p0, Lcom/android/internal/widget/NotificationProgressModel;->mIndeterminateColor:I

    .line 79
    return-void
.end method

.method public static blacklist fromBundle(Landroid/os/Bundle;)Lcom/android/internal/widget/NotificationProgressModel;
    .registers 10
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 154
    const-string v0, "indeterminateColor"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 156
    .local v0, "indeterminateColor":I
    if-eqz v0, :cond_f

    .line 157
    new-instance v1, Lcom/android/internal/widget/NotificationProgressModel;

    invoke-direct {v1, v0}, Lcom/android/internal/widget/NotificationProgressModel;-><init>(I)V

    return-object v1

    .line 159
    :cond_f
    const-class v2, Landroid/os/Bundle;

    .line 161
    const-string/jumbo v3, "segments"

    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v2

    .line 160
    invoke-static {v2}, Landroid/app/Notification$ProgressStyle;->getProgressSegmentsFromBundleList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 162
    .local v4, "segments":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$ProgressStyle$Segment;>;"
    const-class v2, Landroid/os/Bundle;

    .line 164
    const-string/jumbo v3, "points"

    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v2

    .line 163
    invoke-static {v2}, Landroid/app/Notification$ProgressStyle;->getProgressPointsFromBundleList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 165
    .local v5, "points":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$ProgressStyle$Point;>;"
    const-string/jumbo v2, "progress"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 166
    .local v6, "progress":I
    const-string v2, "isStyledByProgress"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 167
    .local v7, "isStyledByProgress":Z
    const-string/jumbo v2, "segmentsFallColor"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 169
    .local v8, "segmentsFallbackColor":I
    new-instance v3, Lcom/android/internal/widget/NotificationProgressModel;

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/widget/NotificationProgressModel;-><init>(Ljava/util/List;Ljava/util/List;IZI)V

    return-object v3
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 187
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 188
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_44

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_44

    .line 189
    :cond_12
    move-object v2, p1

    check-cast v2, Lcom/android/internal/widget/NotificationProgressModel;

    .line 190
    .local v2, "that":Lcom/android/internal/widget/NotificationProgressModel;
    iget v3, p0, Lcom/android/internal/widget/NotificationProgressModel;->mProgress:I

    iget v4, v2, Lcom/android/internal/widget/NotificationProgressModel;->mProgress:I

    if-ne v3, v4, :cond_42

    iget-boolean v3, p0, Lcom/android/internal/widget/NotificationProgressModel;->mIsStyledByProgress:Z

    iget-boolean v4, v2, Lcom/android/internal/widget/NotificationProgressModel;->mIsStyledByProgress:Z

    if-ne v3, v4, :cond_42

    iget v3, p0, Lcom/android/internal/widget/NotificationProgressModel;->mSegmentsFallbackColor:I

    iget v4, v2, Lcom/android/internal/widget/NotificationProgressModel;->mSegmentsFallbackColor:I

    if-ne v3, v4, :cond_42

    iget v3, p0, Lcom/android/internal/widget/NotificationProgressModel;->mIndeterminateColor:I

    iget v4, v2, Lcom/android/internal/widget/NotificationProgressModel;->mIndeterminateColor:I

    if-ne v3, v4, :cond_42

    iget-object v3, p0, Lcom/android/internal/widget/NotificationProgressModel;->mSegments:Ljava/util/List;

    iget-object v4, v2, Lcom/android/internal/widget/NotificationProgressModel;->mSegments:Ljava/util/List;

    .line 194
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    iget-object v3, p0, Lcom/android/internal/widget/NotificationProgressModel;->mPoints:Ljava/util/List;

    iget-object v4, v2, Lcom/android/internal/widget/NotificationProgressModel;->mPoints:Ljava/util/List;

    .line 195
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    goto :goto_43

    :cond_42
    move v0, v1

    .line 190
    :goto_43
    return v0

    .line 188
    .end local v2    # "that":Lcom/android/internal/widget/NotificationProgressModel;
    :cond_44
    :goto_44
    return v1
.end method

.method public blacklist getIndeterminateColor()I
    .registers 2

    .line 120
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressModel;->mIndeterminateColor:I

    return v0
.end method

.method public blacklist getPoints()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Notification$ProgressStyle$Point;",
            ">;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressModel;->mPoints:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getProgress()I
    .registers 2

    .line 102
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressModel;->mProgress:I

    return v0
.end method

.method public blacklist getProgressMax()I
    .registers 3

    .line 106
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressModel;->mSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/widget/NotificationProgressBar$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/internal/widget/NotificationProgressBar$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->sum()I

    move-result v0

    return v0
.end method

.method public blacklist getSegments()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Notification$ProgressStyle$Segment;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressModel;->mSegments:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getSegmentsFallbackColor()I
    .registers 2

    .line 115
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressModel;->mSegmentsFallbackColor:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 7

    .line 200
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressModel;->mSegments:Ljava/util/List;

    iget-object v1, p0, Lcom/android/internal/widget/NotificationProgressModel;->mPoints:Ljava/util/List;

    iget v2, p0, Lcom/android/internal/widget/NotificationProgressModel;->mProgress:I

    .line 202
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/widget/NotificationProgressModel;->mIsStyledByProgress:Z

    .line 203
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/widget/NotificationProgressModel;->mSegmentsFallbackColor:I

    .line 204
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/widget/NotificationProgressModel;->mIndeterminateColor:I

    .line 205
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    .line 200
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isIndeterminate()Z
    .registers 2

    .line 124
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressModel;->mIndeterminateColor:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist isStyledByProgress()Z
    .registers 2

    .line 110
    iget-boolean v0, p0, Lcom/android/internal/widget/NotificationProgressModel;->mIsStyledByProgress:Z

    return v0
.end method

.method public blacklist toBundle()Landroid/os/Bundle;
    .registers 4

    .line 132
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 133
    .local v0, "bundle":Landroid/os/Bundle;
    iget v1, p0, Lcom/android/internal/widget/NotificationProgressModel;->mIndeterminateColor:I

    if-eqz v1, :cond_11

    .line 134
    const-string v1, "indeterminateColor"

    iget v2, p0, Lcom/android/internal/widget/NotificationProgressModel;->mIndeterminateColor:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_44

    .line 136
    :cond_11
    iget-object v1, p0, Lcom/android/internal/widget/NotificationProgressModel;->mSegments:Ljava/util/List;

    .line 137
    invoke-static {v1}, Landroid/app/Notification$ProgressStyle;->getProgressSegmentsAsBundleList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    .line 136
    const-string/jumbo v2, "segments"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableList(Ljava/lang/String;Ljava/util/List;)V

    .line 138
    iget-object v1, p0, Lcom/android/internal/widget/NotificationProgressModel;->mPoints:Ljava/util/List;

    .line 139
    invoke-static {v1}, Landroid/app/Notification$ProgressStyle;->getProgressPointsAsBundleList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    .line 138
    const-string/jumbo v2, "points"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableList(Ljava/lang/String;Ljava/util/List;)V

    .line 140
    const-string/jumbo v1, "progress"

    iget v2, p0, Lcom/android/internal/widget/NotificationProgressModel;->mProgress:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 141
    const-string v1, "isStyledByProgress"

    iget-boolean v2, p0, Lcom/android/internal/widget/NotificationProgressModel;->mIsStyledByProgress:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 142
    iget v1, p0, Lcom/android/internal/widget/NotificationProgressModel;->mSegmentsFallbackColor:I

    if-eqz v1, :cond_44

    .line 143
    const-string/jumbo v1, "segmentsFallColor"

    iget v2, p0, Lcom/android/internal/widget/NotificationProgressModel;->mSegmentsFallbackColor:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 146
    :cond_44
    :goto_44
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationProgressModel{mSegments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/NotificationProgressModel;->mSegments:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPoints="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/NotificationProgressModel;->mPoints:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/NotificationProgressModel;->mProgress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsStyledByProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/widget/NotificationProgressModel;->mIsStyledByProgress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSegmentsFallbackColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/NotificationProgressModel;->mSegmentsFallbackColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIndeterminateColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/NotificationProgressModel;->mIndeterminateColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

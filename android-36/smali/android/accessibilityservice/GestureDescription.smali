.class public final Landroid/accessibilityservice/GestureDescription;
.super Ljava/lang/Object;
.source "GestureDescription.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/GestureDescription$StrokeDescription;,
        Landroid/accessibilityservice/GestureDescription$TouchPoint;,
        Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;,
        Landroid/accessibilityservice/GestureDescription$GestureStep;,
        Landroid/accessibilityservice/GestureDescription$Builder;
    }
.end annotation


# static fields
.field private static final greylist-max-o MAX_GESTURE_DURATION_MS:J = 0xea60L

.field private static final greylist-max-o MAX_STROKE_COUNT:I = 0x14


# instance fields
.field private final blacklist mDisplayId:I

.field private final greylist-max-o mStrokes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/accessibilityservice/GestureDescription$StrokeDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mTempPos:[F


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetNextKeyPointAtLeast(Landroid/accessibilityservice/GestureDescription;J)J
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/accessibilityservice/GestureDescription;->getNextKeyPointAtLeast(J)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetPointsForTime(Landroid/accessibilityservice/GestureDescription;J[Landroid/accessibilityservice/GestureDescription$TouchPoint;)I
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/accessibilityservice/GestureDescription;->getPointsForTime(J[Landroid/accessibilityservice/GestureDescription$TouchPoint;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetTotalDuration(Ljava/util/List;)J
    .registers 3

    invoke-static {p0}, Landroid/accessibilityservice/GestureDescription;->getTotalDuration(Ljava/util/List;)J

    move-result-wide v0

    return-wide v0
.end method

.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0}, Landroid/accessibilityservice/GestureDescription;-><init>(Ljava/util/List;)V

    .line 74
    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/GestureDescription$StrokeDescription;",
            ">;)V"
        }
    .end annotation

    .line 77
    .local p1, "strokes":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/GestureDescription$StrokeDescription;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/accessibilityservice/GestureDescription;-><init>(Ljava/util/List;I)V

    .line 78
    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/List;I)V
    .registers 4
    .param p2, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/GestureDescription$StrokeDescription;",
            ">;I)V"
        }
    .end annotation

    .line 80
    .local p1, "strokes":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/GestureDescription$StrokeDescription;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/accessibilityservice/GestureDescription;->mStrokes:Ljava/util/List;

    .line 51
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/accessibilityservice/GestureDescription;->mTempPos:[F

    .line 81
    iget-object v0, p0, Landroid/accessibilityservice/GestureDescription;->mStrokes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 82
    iput p2, p0, Landroid/accessibilityservice/GestureDescription;->mDisplayId:I

    .line 83
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/List;ILandroid/accessibilityservice/GestureDescription-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/accessibilityservice/GestureDescription;-><init>(Ljava/util/List;I)V

    return-void
.end method

.method public static whitelist getMaxGestureDuration()J
    .registers 2

    .line 69
    const-wide/32 v0, 0xea60

    return-wide v0
.end method

.method public static whitelist getMaxStrokeCount()I
    .registers 1

    .line 60
    const/16 v0, 0x14

    return v0
.end method

.method private greylist-max-o getNextKeyPointAtLeast(J)J
    .registers 11
    .param p1, "offset"    # J

    .line 122
    const-wide v0, 0x7fffffffffffffffL

    .line 123
    .local v0, "nextKeyPoint":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    iget-object v3, p0, Landroid/accessibilityservice/GestureDescription;->mStrokes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_37

    .line 124
    iget-object v3, p0, Landroid/accessibilityservice/GestureDescription;->mStrokes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    iget-wide v3, v3, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mStartTime:J

    .line 125
    .local v3, "thisStartTime":J
    cmp-long v5, v3, v0

    if-gez v5, :cond_21

    cmp-long v5, v3, p1

    if-ltz v5, :cond_21

    .line 126
    move-wide v0, v3

    .line 128
    :cond_21
    iget-object v5, p0, Landroid/accessibilityservice/GestureDescription;->mStrokes:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    iget-wide v5, v5, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mEndTime:J

    .line 129
    .local v5, "thisEndTime":J
    cmp-long v7, v5, v0

    if-gez v7, :cond_34

    cmp-long v7, v5, p1

    if-ltz v7, :cond_34

    .line 130
    move-wide v0, v5

    .line 123
    .end local v3    # "thisStartTime":J
    .end local v5    # "thisEndTime":J
    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 133
    .end local v2    # "i":I
    :cond_37
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    if-nez v2, :cond_43

    const-wide/16 v2, -0x1

    goto :goto_44

    :cond_43
    move-wide v2, v0

    :goto_44
    return-wide v2
.end method

.method private greylist-max-o getPointsForTime(J[Landroid/accessibilityservice/GestureDescription$TouchPoint;)I
    .registers 13
    .param p1, "time"    # J
    .param p3, "touchPoints"    # [Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, "numPointsFound":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Landroid/accessibilityservice/GestureDescription;->mStrokes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_74

    .line 146
    iget-object v2, p0, Landroid/accessibilityservice/GestureDescription;->mStrokes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    .line 147
    .local v2, "strokeDescription":Landroid/accessibilityservice/GestureDescription$StrokeDescription;
    invoke-virtual {v2, p1, p2}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->hasPointForTime(J)Z

    move-result v3

    if-eqz v3, :cond_71

    .line 148
    aget-object v3, p3, v0

    invoke-virtual {v2}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->getId()I

    move-result v4

    iput v4, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    .line 149
    aget-object v3, p3, v0

    .line 150
    invoke-virtual {v2}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->getContinuedStrokeId()I

    move-result v4

    iput v4, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mContinuedStrokeId:I

    .line 151
    aget-object v3, p3, v0

    .line 152
    invoke-virtual {v2}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->getContinuedStrokeId()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-gez v4, :cond_3a

    iget-wide v7, v2, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mStartTime:J

    cmp-long v4, p1, v7

    if-nez v4, :cond_3a

    move v4, v6

    goto :goto_3b

    :cond_3a
    move v4, v5

    :goto_3b
    iput-boolean v4, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsStartOfPath:Z

    .line 154
    aget-object v3, p3, v0

    invoke-virtual {v2}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->willContinue()Z

    move-result v4

    if-nez v4, :cond_4d

    iget-wide v7, v2, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mEndTime:J

    cmp-long v4, p1, v7

    if-nez v4, :cond_4d

    move v4, v6

    goto :goto_4e

    :cond_4d
    move v4, v5

    :goto_4e
    iput-boolean v4, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsEndOfPath:Z

    .line 156
    iget-object v3, p0, Landroid/accessibilityservice/GestureDescription;->mTempPos:[F

    invoke-virtual {v2, p1, p2, v3}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->getPosForTime(J[F)Z

    .line 157
    aget-object v3, p3, v0

    iget-object v4, p0, Landroid/accessibilityservice/GestureDescription;->mTempPos:[F

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    iput v4, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    .line 158
    aget-object v3, p3, v0

    iget-object v4, p0, Landroid/accessibilityservice/GestureDescription;->mTempPos:[F

    aget v4, v4, v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    iput v4, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    .line 159
    add-int/lit8 v0, v0, 0x1

    .line 145
    .end local v2    # "strokeDescription":Landroid/accessibilityservice/GestureDescription$StrokeDescription;
    :cond_71
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 162
    .end local v1    # "i":I
    :cond_74
    return v0
.end method

.method private static greylist-max-o getTotalDuration(Ljava/util/List;)J
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/GestureDescription$StrokeDescription;",
            ">;)J"
        }
    .end annotation

    .line 168
    .local p0, "paths":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/GestureDescription$StrokeDescription;>;"
    const-wide/high16 v0, -0x8000000000000000L

    .line 169
    .local v0, "latestEnd":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_18

    .line 170
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    .line 171
    .local v3, "path":Landroid/accessibilityservice/GestureDescription$StrokeDescription;
    iget-wide v4, v3, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mEndTime:J

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 169
    .end local v3    # "path":Landroid/accessibilityservice/GestureDescription$StrokeDescription;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 173
    .end local v2    # "i":I
    :cond_18
    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    return-wide v2
.end method


# virtual methods
.method public whitelist getDisplayId()I
    .registers 2

    .line 112
    iget v0, p0, Landroid/accessibilityservice/GestureDescription;->mDisplayId:I

    return v0
.end method

.method public whitelist getStroke(I)Landroid/accessibilityservice/GestureDescription$StrokeDescription;
    .registers 3
    .param p1, "index"    # I

    .line 102
    iget-object v0, p0, Landroid/accessibilityservice/GestureDescription;->mStrokes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    return-object v0
.end method

.method public whitelist getStrokeCount()I
    .registers 2

    .line 91
    iget-object v0, p0, Landroid/accessibilityservice/GestureDescription;->mStrokes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.class public final Landroid/accessibilityservice/GestureDescription;
.super Ljava/lang/Object;
.source "GestureDescription.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/GestureDescription$Builder;,
        Landroid/accessibilityservice/GestureDescription$GestureStep;,
        Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;,
        Landroid/accessibilityservice/GestureDescription$StrokeDescription;,
        Landroid/accessibilityservice/GestureDescription$TouchPoint;
    }
.end annotation


# static fields
.field private static final MAX_GESTURE_DURATION_MS:J = 0xea60L

.field private static final MAX_STROKE_COUNT:I = 0xa


# instance fields
.field private final mStrokes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/GestureDescription$StrokeDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempPos:[F


# direct methods
.method static synthetic -wrap0(Landroid/accessibilityservice/GestureDescription;J[Landroid/accessibilityservice/GestureDescription$TouchPoint;)I
    .locals 1
    .param p1, "time"    # J
    .param p3, "touchPoints"    # [Landroid/accessibilityservice/GestureDescription$TouchPoint;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/accessibilityservice/GestureDescription;->getPointsForTime(J[Landroid/accessibilityservice/GestureDescription$TouchPoint;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Landroid/accessibilityservice/GestureDescription;J)J
    .locals 3
    .param p1, "offset"    # J

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/accessibilityservice/GestureDescription;->getNextKeyPointAtLeast(J)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method static synthetic -wrap2(Ljava/util/List;)J
    .locals 2
    .param p0, "paths"    # Ljava/util/List;

    #@0
    .prologue
    invoke-static {p0}, Landroid/accessibilityservice/GestureDescription;->getTotalDuration(Ljava/util/List;)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 51
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/accessibilityservice/GestureDescription;->mStrokes:Ljava/util/List;

    #@a
    .line 52
    const/4 v0, 0x2

    #@b
    new-array v0, v0, [F

    #@d
    iput-object v0, p0, Landroid/accessibilityservice/GestureDescription;->mTempPos:[F

    #@f
    .line 72
    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/GestureDescription$StrokeDescription;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 74
    .local p1, "strokes":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/GestureDescription$StrokeDescription;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 51
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/accessibilityservice/GestureDescription;->mStrokes:Ljava/util/List;

    #@a
    .line 52
    const/4 v0, 0x2

    #@b
    new-array v0, v0, [F

    #@d
    iput-object v0, p0, Landroid/accessibilityservice/GestureDescription;->mTempPos:[F

    #@f
    .line 75
    iget-object v0, p0, Landroid/accessibilityservice/GestureDescription;->mStrokes:Ljava/util/List;

    #@11
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@14
    .line 74
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Landroid/accessibilityservice/GestureDescription;)V
    .locals 0
    .param p1, "strokes"    # Ljava/util/List;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/accessibilityservice/GestureDescription;-><init>(Ljava/util/List;)V

    #@3
    return-void
.end method

.method public static getMaxGestureDuration()J
    .locals 2

    #@0
    .prologue
    .line 69
    const-wide/32 v0, 0xea60

    #@3
    return-wide v0
.end method

.method public static getMaxStrokeCount()I
    .locals 1

    #@0
    .prologue
    .line 60
    const/16 v0, 0xa

    #@2
    return v0
.end method

.method private getNextKeyPointAtLeast(J)J
    .locals 11
    .param p1, "offset"    # J

    #@0
    .prologue
    .line 105
    const-wide v2, 0x7fffffffffffffffL

    #@5
    .line 106
    .local v2, "nextKeyPoint":J
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/accessibilityservice/GestureDescription;->mStrokes:Ljava/util/List;

    #@8
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@b
    move-result v1

    #@c
    if-ge v0, v1, :cond_2

    #@e
    .line 107
    iget-object v1, p0, Landroid/accessibilityservice/GestureDescription;->mStrokes:Ljava/util/List;

    #@10
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    #@16
    iget-wide v6, v1, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mStartTime:J

    #@18
    .line 108
    .local v6, "thisStartTime":J
    cmp-long v1, v6, v2

    #@1a
    if-gez v1, :cond_0

    #@1c
    cmp-long v1, v6, p1

    #@1e
    if-ltz v1, :cond_0

    #@20
    .line 109
    move-wide v2, v6

    #@21
    .line 111
    :cond_0
    iget-object v1, p0, Landroid/accessibilityservice/GestureDescription;->mStrokes:Ljava/util/List;

    #@23
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@26
    move-result-object v1

    #@27
    check-cast v1, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    #@29
    iget-wide v4, v1, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mEndTime:J

    #@2b
    .line 112
    .local v4, "thisEndTime":J
    cmp-long v1, v4, v2

    #@2d
    if-gez v1, :cond_1

    #@2f
    cmp-long v1, v4, p1

    #@31
    if-ltz v1, :cond_1

    #@33
    .line 113
    move-wide v2, v4

    #@34
    .line 106
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@36
    goto :goto_0

    #@37
    .line 116
    .end local v4    # "thisEndTime":J
    .end local v6    # "thisStartTime":J
    :cond_2
    const-wide v8, 0x7fffffffffffffffL

    #@3c
    cmp-long v1, v2, v8

    #@3e
    if-nez v1, :cond_3

    #@40
    const-wide/16 v2, -0x1

    #@42
    .end local v2    # "nextKeyPoint":J
    :cond_3
    return-wide v2
.end method

.method private getPointsForTime(J[Landroid/accessibilityservice/GestureDescription$TouchPoint;)I
    .locals 11
    .param p1, "time"    # J
    .param p3, "touchPoints"    # [Landroid/accessibilityservice/GestureDescription$TouchPoint;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 127
    const/4 v1, 0x0

    #@3
    .line 128
    .local v1, "numPointsFound":I
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/accessibilityservice/GestureDescription;->mStrokes:Ljava/util/List;

    #@6
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@9
    move-result v3

    #@a
    if-ge v0, v3, :cond_3

    #@c
    .line 129
    iget-object v3, p0, Landroid/accessibilityservice/GestureDescription;->mStrokes:Ljava/util/List;

    #@e
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    #@14
    .line 130
    .local v2, "strokeDescription":Landroid/accessibilityservice/GestureDescription$StrokeDescription;
    invoke-virtual {v2, p1, p2}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->hasPointForTime(J)Z

    #@17
    move-result v3

    #@18
    if-eqz v3, :cond_0

    #@1a
    .line 131
    aget-object v3, p3, v1

    #@1c
    iput v0, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mPathIndex:I

    #@1e
    .line 132
    aget-object v6, p3, v1

    #@20
    iget-wide v8, v2, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mStartTime:J

    #@22
    cmp-long v3, p1, v8

    #@24
    if-nez v3, :cond_1

    #@26
    move v3, v4

    #@27
    :goto_1
    iput-boolean v3, v6, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsStartOfPath:Z

    #@29
    .line 133
    aget-object v6, p3, v1

    #@2b
    iget-wide v8, v2, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mEndTime:J

    #@2d
    cmp-long v3, p1, v8

    #@2f
    if-nez v3, :cond_2

    #@31
    move v3, v4

    #@32
    :goto_2
    iput-boolean v3, v6, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsEndOfPath:Z

    #@34
    .line 134
    iget-object v3, p0, Landroid/accessibilityservice/GestureDescription;->mTempPos:[F

    #@36
    invoke-virtual {v2, p1, p2, v3}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->getPosForTime(J[F)Z

    #@39
    .line 135
    aget-object v3, p3, v1

    #@3b
    iget-object v6, p0, Landroid/accessibilityservice/GestureDescription;->mTempPos:[F

    #@3d
    aget v6, v6, v5

    #@3f
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    #@42
    move-result v6

    #@43
    int-to-float v6, v6

    #@44
    iput v6, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    #@46
    .line 136
    aget-object v3, p3, v1

    #@48
    iget-object v6, p0, Landroid/accessibilityservice/GestureDescription;->mTempPos:[F

    #@4a
    aget v6, v6, v4

    #@4c
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    #@4f
    move-result v6

    #@50
    int-to-float v6, v6

    #@51
    iput v6, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    #@53
    .line 137
    add-int/lit8 v1, v1, 0x1

    #@55
    .line 128
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@57
    goto :goto_0

    #@58
    :cond_1
    move v3, v5

    #@59
    .line 132
    goto :goto_1

    #@5a
    :cond_2
    move v3, v5

    #@5b
    .line 133
    goto :goto_2

    #@5c
    .line 140
    .end local v2    # "strokeDescription":Landroid/accessibilityservice/GestureDescription$StrokeDescription;
    :cond_3
    return v1
.end method

.method private static getTotalDuration(Ljava/util/List;)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/GestureDescription$StrokeDescription;",
            ">;)J"
        }
    .end annotation

    #@0
    .prologue
    .line 146
    .local p0, "paths":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/GestureDescription$StrokeDescription;>;"
    const-wide/high16 v2, -0x8000000000000000L

    #@2
    .line 147
    .local v2, "latestEnd":J
    const/4 v0, 0x0

    #@3
    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@6
    move-result v4

    #@7
    if-ge v0, v4, :cond_0

    #@9
    .line 148
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    check-cast v1, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    #@f
    .line 149
    .local v1, "path":Landroid/accessibilityservice/GestureDescription$StrokeDescription;
    iget-wide v4, v1, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mEndTime:J

    #@11
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    #@14
    move-result-wide v2

    #@15
    .line 147
    add-int/lit8 v0, v0, 0x1

    #@17
    goto :goto_0

    #@18
    .line 151
    .end local v1    # "path":Landroid/accessibilityservice/GestureDescription$StrokeDescription;
    :cond_0
    const-wide/16 v4, 0x0

    #@1a
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    #@1d
    move-result-wide v4

    #@1e
    return-wide v4
.end method


# virtual methods
.method public getStroke(I)Landroid/accessibilityservice/GestureDescription$StrokeDescription;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 95
    iget-object v0, p0, Landroid/accessibilityservice/GestureDescription;->mStrokes:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    #@8
    return-object v0
.end method

.method public getStrokeCount()I
    .locals 1

    #@0
    .prologue
    .line 84
    iget-object v0, p0, Landroid/accessibilityservice/GestureDescription;->mStrokes:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

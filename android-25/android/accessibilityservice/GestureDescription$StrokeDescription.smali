.class public Landroid/accessibilityservice/GestureDescription$StrokeDescription;
.super Ljava/lang/Object;
.source "GestureDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/GestureDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StrokeDescription"
.end annotation


# instance fields
.field mEndTime:J

.field mPath:Landroid/graphics/Path;

.field private mPathMeasure:Landroid/graphics/PathMeasure;

.field mStartTime:J

.field mTapLocation:[F

.field private mTimeToLengthConversion:F


# direct methods
.method public constructor <init>(Landroid/graphics/Path;JJ)V
    .locals 10
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "startTime"    # J
    .param p4, "duration"    # J

    #@0
    .prologue
    const-wide/16 v8, 0x0

    #@2
    const/high16 v4, -0x40800000    # -1.0f

    #@4
    const/4 v6, 0x0

    #@5
    const/4 v5, 0x0

    #@6
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    .line 219
    cmp-long v3, p4, v8

    #@b
    if-gtz v3, :cond_0

    #@d
    .line 220
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v4, "Duration must be positive"

    #@12
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v3

    #@16
    .line 222
    :cond_0
    cmp-long v3, p2, v8

    #@18
    if-gez v3, :cond_1

    #@1a
    .line 223
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@1c
    const-string/jumbo v4, "Start time must not be negative"

    #@1f
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v3

    #@23
    .line 225
    :cond_1
    new-instance v0, Landroid/graphics/RectF;

    #@25
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    #@28
    .line 226
    .local v0, "bounds":Landroid/graphics/RectF;
    invoke-virtual {p1, v0, v6}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    #@2b
    .line 227
    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    #@2d
    cmpg-float v3, v3, v5

    #@2f
    if-ltz v3, :cond_2

    #@31
    iget v3, v0, Landroid/graphics/RectF;->top:F

    #@33
    cmpg-float v3, v3, v5

    #@35
    if-gez v3, :cond_3

    #@37
    .line 229
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@39
    const-string/jumbo v4, "Path bounds must not be negative"

    #@3c
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v3

    #@40
    .line 227
    :cond_3
    iget v3, v0, Landroid/graphics/RectF;->right:F

    #@42
    cmpg-float v3, v3, v5

    #@44
    if-ltz v3, :cond_2

    #@46
    .line 228
    iget v3, v0, Landroid/graphics/RectF;->left:F

    #@48
    cmpg-float v3, v3, v5

    #@4a
    if-ltz v3, :cond_2

    #@4c
    .line 231
    invoke-virtual {p1}, Landroid/graphics/Path;->isEmpty()Z

    #@4f
    move-result v3

    #@50
    if-eqz v3, :cond_4

    #@52
    .line 232
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@54
    const-string/jumbo v4, "Path is empty"

    #@57
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5a
    throw v3

    #@5b
    .line 234
    :cond_4
    new-instance v3, Landroid/graphics/Path;

    #@5d
    invoke-direct {v3, p1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    #@60
    iput-object v3, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPath:Landroid/graphics/Path;

    #@62
    .line 235
    new-instance v3, Landroid/graphics/PathMeasure;

    #@64
    invoke-direct {v3, p1, v6}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    #@67
    iput-object v3, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPathMeasure:Landroid/graphics/PathMeasure;

    #@69
    .line 236
    iget-object v3, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPathMeasure:Landroid/graphics/PathMeasure;

    #@6b
    invoke-virtual {v3}, Landroid/graphics/PathMeasure;->getLength()F

    #@6e
    move-result v3

    #@6f
    cmpl-float v3, v3, v5

    #@71
    if-nez v3, :cond_5

    #@73
    .line 238
    new-instance v2, Landroid/graphics/Path;

    #@75
    invoke-direct {v2, p1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    #@78
    .line 239
    .local v2, "tempPath":Landroid/graphics/Path;
    invoke-virtual {v2, v4, v4}, Landroid/graphics/Path;->lineTo(FF)V

    #@7b
    .line 240
    const/4 v3, 0x2

    #@7c
    new-array v3, v3, [F

    #@7e
    iput-object v3, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mTapLocation:[F

    #@80
    .line 241
    new-instance v1, Landroid/graphics/PathMeasure;

    #@82
    invoke-direct {v1, v2, v6}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    #@85
    .line 242
    .local v1, "pathMeasure":Landroid/graphics/PathMeasure;
    iget-object v3, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mTapLocation:[F

    #@87
    const/4 v4, 0x0

    #@88
    invoke-virtual {v1, v5, v3, v4}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    #@8b
    .line 244
    .end local v1    # "pathMeasure":Landroid/graphics/PathMeasure;
    .end local v2    # "tempPath":Landroid/graphics/Path;
    :cond_5
    iget-object v3, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPathMeasure:Landroid/graphics/PathMeasure;

    #@8d
    invoke-virtual {v3}, Landroid/graphics/PathMeasure;->nextContour()Z

    #@90
    move-result v3

    #@91
    if-eqz v3, :cond_6

    #@93
    .line 245
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@95
    const-string/jumbo v4, "Path has more than one contour"

    #@98
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@9b
    throw v3

    #@9c
    .line 251
    :cond_6
    iget-object v3, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPathMeasure:Landroid/graphics/PathMeasure;

    #@9e
    iget-object v4, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPath:Landroid/graphics/Path;

    #@a0
    invoke-virtual {v3, v4, v6}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    #@a3
    .line 252
    iput-wide p2, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mStartTime:J

    #@a5
    .line 253
    add-long v4, p2, p4

    #@a7
    iput-wide v4, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mEndTime:J

    #@a9
    .line 254
    invoke-virtual {p0}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->getLength()F

    #@ac
    move-result v3

    #@ad
    long-to-float v4, p4

    #@ae
    div-float/2addr v3, v4

    #@af
    iput v3, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mTimeToLengthConversion:F

    #@b1
    .line 218
    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 4

    #@0
    .prologue
    .line 281
    iget-wide v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mEndTime:J

    #@2
    iget-wide v2, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mStartTime:J

    #@4
    sub-long/2addr v0, v2

    #@5
    return-wide v0
.end method

.method getLength()F
    .locals 1

    #@0
    .prologue
    .line 285
    iget-object v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPathMeasure:Landroid/graphics/PathMeasure;

    #@2
    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 2

    #@0
    .prologue
    .line 263
    new-instance v0, Landroid/graphics/Path;

    #@2
    iget-object v1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPath:Landroid/graphics/Path;

    #@4
    invoke-direct {v0, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    #@7
    return-object v0
.end method

.method getPosForTime(J[F)Z
    .locals 5
    .param p1, "time"    # J
    .param p3, "pos"    # [F

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v2, 0x1

    #@3
    .line 290
    iget-object v1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mTapLocation:[F

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 291
    iget-object v1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mTapLocation:[F

    #@9
    aget v1, v1, v3

    #@b
    aput v1, p3, v3

    #@d
    .line 292
    iget-object v1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mTapLocation:[F

    #@f
    aget v1, v1, v2

    #@11
    aput v1, p3, v2

    #@13
    .line 293
    return v2

    #@14
    .line 295
    :cond_0
    iget-wide v2, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mEndTime:J

    #@16
    cmp-long v1, p1, v2

    #@18
    if-nez v1, :cond_1

    #@1a
    .line 297
    iget-object v1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPathMeasure:Landroid/graphics/PathMeasure;

    #@1c
    invoke-virtual {p0}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->getLength()F

    #@1f
    move-result v2

    #@20
    invoke-virtual {v1, v2, p3, v4}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    #@23
    move-result v1

    #@24
    return v1

    #@25
    .line 299
    :cond_1
    iget v1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mTimeToLengthConversion:F

    #@27
    iget-wide v2, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mStartTime:J

    #@29
    sub-long v2, p1, v2

    #@2b
    long-to-float v2, v2

    #@2c
    mul-float v0, v1, v2

    #@2e
    .line 300
    .local v0, "length":F
    iget-object v1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPathMeasure:Landroid/graphics/PathMeasure;

    #@30
    invoke-virtual {v1, v0, p3, v4}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    #@33
    move-result v1

    #@34
    return v1
.end method

.method public getStartTime()J
    .locals 2

    #@0
    .prologue
    .line 272
    iget-wide v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mStartTime:J

    #@2
    return-wide v0
.end method

.method hasPointForTime(J)Z
    .locals 5
    .param p1, "time"    # J

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 304
    iget-wide v2, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mStartTime:J

    #@3
    cmp-long v1, p1, v2

    #@5
    if-ltz v1, :cond_0

    #@7
    iget-wide v2, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mEndTime:J

    #@9
    cmp-long v1, p1, v2

    #@b
    if-gtz v1, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0
.end method

.class final Landroid/icu/util/UniversalTimeScale$TimeScaleData;
.super Ljava/lang/Object;
.source "UniversalTimeScale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/UniversalTimeScale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TimeScaleData"
.end annotation


# instance fields
.field greylist-max-o epochOffset:J

.field greylist-max-o epochOffsetM1:J

.field greylist-max-o epochOffsetP1:J

.field greylist-max-o fromMax:J

.field greylist-max-o fromMin:J

.field greylist-max-o maxRound:J

.field greylist-max-o minRound:J

.field greylist-max-o toMax:J

.field greylist-max-o toMin:J

.field greylist-max-o units:J

.field greylist-max-o unitsRound:J


# direct methods
.method constructor greylist-max-o <init>(JJJJJJ)V
    .registers 19
    .param p1, "theUnits"    # J
    .param p3, "theEpochOffset"    # J
    .param p5, "theToMin"    # J
    .param p7, "theToMax"    # J
    .param p9, "theFromMin"    # J
    .param p11, "theFromMax"    # J

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    iput-wide p1, p0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->units:J

    .line 271
    const-wide/16 v0, 0x2

    div-long v0, p1, v0

    iput-wide v0, p0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->unitsRound:J

    .line 273
    const-wide/high16 v0, -0x8000000000000000L

    iget-wide v2, p0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->unitsRound:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->minRound:J

    .line 274
    const-wide v0, 0x7fffffffffffffffL

    iget-wide v2, p0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->unitsRound:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->maxRound:J

    .line 276
    div-long v0, p3, p1

    iput-wide v0, p0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffset:J

    .line 278
    const-wide/16 v0, 0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_2d

    .line 279
    iget-wide v0, p0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffset:J

    iput-wide v0, p0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffsetM1:J

    iput-wide v0, p0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffsetP1:J

    goto :goto_37

    .line 281
    :cond_2d
    iget-wide v2, p0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffset:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffsetP1:J

    .line 282
    iget-wide v2, p0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffset:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffsetM1:J

    .line 285
    :goto_37
    iput-wide p5, p0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->toMin:J

    .line 286
    iput-wide p7, p0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->toMax:J

    .line 288
    move-wide v2, p9

    iput-wide v2, p0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->fromMin:J

    .line 289
    move-wide/from16 v4, p11

    iput-wide v4, p0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->fromMax:J

    .line 290
    return-void
.end method

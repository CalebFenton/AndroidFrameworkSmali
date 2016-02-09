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
.field epochOffset:J

.field epochOffsetM1:J

.field epochOffsetP1:J

.field fromMax:J

.field fromMin:J

.field maxRound:J

.field minRound:J

.field toMax:J

.field toMin:J

.field units:J

.field unitsRound:J


# direct methods
.method constructor <init>(JJJJJJ)V
    .locals 7
    .param p1, "theUnits"    # J
    .param p3, "theEpochOffset"    # J
    .param p5, "theToMin"    # J
    .param p7, "theToMax"    # J
    .param p9, "theFromMin"    # J
    .param p11, "theFromMax"    # J

    #@0
    .prologue
    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 303
    iput-wide p1, p0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->units:J

    #@5
    .line 304
    const-wide/16 v2, 0x2

    #@7
    div-long v2, p1, v2

    #@9
    iput-wide v2, p0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->unitsRound:J

    #@b
    .line 306
    iget-wide v2, p0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->unitsRound:J

    #@d
    const-wide/high16 v4, -0x8000000000000000L

    #@f
    add-long/2addr v2, v4

    #@10
    iput-wide v2, p0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->minRound:J

    #@12
    .line 307
    iget-wide v2, p0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->unitsRound:J

    #@14
    const-wide v4, 0x7fffffffffffffffL

    #@19
    sub-long v2, v4, v2

    #@1b
    iput-wide v2, p0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->maxRound:J

    #@1d
    .line 309
    div-long v2, p3, p1

    #@1f
    iput-wide v2, p0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffset:J

    #@21
    .line 311
    const-wide/16 v2, 0x1

    #@23
    cmp-long v2, p1, v2

    #@25
    if-nez v2, :cond_0

    #@27
    .line 312
    iget-wide v2, p0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffset:J

    #@29
    iput-wide v2, p0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffsetM1:J

    #@2b
    iput-wide v2, p0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffsetP1:J

    #@2d
    .line 318
    :goto_0
    iput-wide p5, p0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->toMin:J

    #@2f
    .line 319
    iput-wide p7, p0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->toMax:J

    #@31
    .line 321
    move-wide/from16 v0, p9

    #@33
    iput-wide v0, p0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->fromMin:J

    #@35
    .line 322
    move-wide/from16 v0, p11

    #@37
    iput-wide v0, p0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->fromMax:J

    #@39
    .line 301
    return-void

    #@3a
    .line 314
    :cond_0
    iget-wide v2, p0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffset:J

    #@3c
    const-wide/16 v4, 0x1

    #@3e
    add-long/2addr v2, v4

    #@3f
    iput-wide v2, p0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffsetP1:J

    #@41
    .line 315
    iget-wide v2, p0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffset:J

    #@43
    const-wide/16 v4, 0x1

    #@45
    sub-long/2addr v2, v4

    #@46
    iput-wide v2, p0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffsetM1:J

    #@48
    goto :goto_0
.end method

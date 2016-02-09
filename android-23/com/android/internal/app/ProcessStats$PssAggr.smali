.class Lcom/android/internal/app/ProcessStats$PssAggr;
.super Ljava/lang/Object;
.source "ProcessStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ProcessStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PssAggr"
.end annotation


# instance fields
.field pss:J

.field samples:J


# direct methods
.method constructor <init>()V
    .locals 2

    #@0
    .prologue
    const-wide/16 v0, 0x0

    #@2
    .line 664
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 665
    iput-wide v0, p0, Lcom/android/internal/app/ProcessStats$PssAggr;->pss:J

    #@7
    .line 666
    iput-wide v0, p0, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    #@9
    .line 664
    return-void
.end method


# virtual methods
.method add(JJ)V
    .locals 7
    .param p1, "newPss"    # J
    .param p3, "newSamples"    # J

    #@0
    .prologue
    .line 669
    iget-wide v0, p0, Lcom/android/internal/app/ProcessStats$PssAggr;->pss:J

    #@2
    long-to-double v0, v0

    #@3
    iget-wide v2, p0, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    #@5
    long-to-double v2, v2

    #@6
    mul-double/2addr v0, v2

    #@7
    long-to-double v2, p1

    #@8
    long-to-double v4, p3

    #@9
    mul-double/2addr v2, v4

    #@a
    add-double/2addr v0, v2

    #@b
    double-to-long v0, v0

    #@c
    .line 670
    iget-wide v2, p0, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    #@e
    add-long/2addr v2, p3

    #@f
    .line 669
    div-long/2addr v0, v2

    #@10
    iput-wide v0, p0, Lcom/android/internal/app/ProcessStats$PssAggr;->pss:J

    #@12
    .line 671
    iget-wide v0, p0, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    #@14
    add-long/2addr v0, p3

    #@15
    iput-wide v0, p0, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    #@17
    .line 668
    return-void
.end method

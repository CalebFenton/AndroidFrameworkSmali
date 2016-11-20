.class Lcom/android/internal/app/procstats/ProcessState$PssAggr;
.super Ljava/lang/Object;
.source "ProcessState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/procstats/ProcessState;
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
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 113
    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    #@7
    .line 114
    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    #@9
    .line 112
    return-void
.end method


# virtual methods
.method add(JJ)V
    .locals 7
    .param p1, "newPss"    # J
    .param p3, "newSamples"    # J

    #@0
    .prologue
    .line 117
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    #@2
    long-to-double v0, v0

    #@3
    iget-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

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
    .line 118
    iget-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    #@e
    add-long/2addr v2, p3

    #@f
    .line 117
    div-long/2addr v0, v2

    #@10
    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    #@12
    .line 119
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    #@14
    add-long/2addr v0, p3

    #@15
    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    #@17
    .line 116
    return-void
.end method

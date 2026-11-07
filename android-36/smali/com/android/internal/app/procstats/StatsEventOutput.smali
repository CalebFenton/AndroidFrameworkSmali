.class public Lcom/android/internal/app/procstats/StatsEventOutput;
.super Ljava/lang/Object;
.source "StatsEventOutput.java"


# instance fields
.field blacklist mOutput:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)V"
        }
    .end annotation

    .line 33
    .local p1, "output":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/internal/app/procstats/StatsEventOutput;->mOutput:Ljava/util/List;

    .line 35
    return-void
.end method


# virtual methods
.method public blacklist write(IILjava/lang/String;IIIIIIIIIII)V
    .registers 17
    .param p1, "atomTag"    # I
    .param p2, "uid"    # I
    .param p3, "processName"    # Ljava/lang/String;
    .param p4, "measurementStartUptimeSecs"    # I
    .param p5, "measurementEndUptimeSecs"    # I
    .param p6, "measurementDurationUptimeSecs"    # I
    .param p7, "topSeconds"    # I
    .param p8, "fgsSeconds"    # I
    .param p9, "boundTopSeconds"    # I
    .param p10, "boundFgsSeconds"    # I
    .param p11, "importantForegroundSeconds"    # I
    .param p12, "cachedSeconds"    # I
    .param p13, "frozenSeconds"    # I
    .param p14, "otherSeconds"    # I

    .line 53
    iget-object v0, p0, Lcom/android/internal/app/procstats/StatsEventOutput;->mOutput:Ljava/util/List;

    .line 54
    invoke-static/range {p1 .. p14}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;IIIIIIIIIII)Landroid/util/StatsEvent;

    move-result-object v1

    .line 53
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    return-void
.end method

.method public blacklist write(IILjava/lang/String;ILjava/lang/String;IIIIILjava/lang/String;)V
    .registers 14
    .param p1, "atomTag"    # I
    .param p2, "clientUid"    # I
    .param p3, "processName"    # Ljava/lang/String;
    .param p4, "serviceUid"    # I
    .param p5, "serviceName"    # Ljava/lang/String;
    .param p6, "measurementStartUptimeSecs"    # I
    .param p7, "measurementEndUptimeSecs"    # I
    .param p8, "measurementDurationUptimeSecs"    # I
    .param p9, "activeDurationUptimeSecs"    # I
    .param p10, "activeCount"    # I
    .param p11, "serviceProcessName"    # Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/android/internal/app/procstats/StatsEventOutput;->mOutput:Ljava/util/List;

    .line 85
    invoke-static/range {p1 .. p11}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;ILjava/lang/String;IIIIILjava/lang/String;)Landroid/util/StatsEvent;

    move-result-object v1

    .line 84
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    return-void
.end method

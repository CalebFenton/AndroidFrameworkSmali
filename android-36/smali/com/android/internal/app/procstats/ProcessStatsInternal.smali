.class public abstract Lcom/android/internal/app/procstats/ProcessStatsInternal;
.super Ljava/lang/Object;
.source "ProcessStatsInternal.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist getUidProcStateStatsOverTime(J)Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/util/SparseArray<",
            "[J>;"
        }
    .end annotation
.end method

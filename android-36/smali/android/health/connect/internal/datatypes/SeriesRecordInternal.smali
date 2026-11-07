.class public abstract Landroid/health/connect/internal/datatypes/SeriesRecordInternal;
.super Landroid/health/connect/internal/datatypes/IntervalRecordInternal;
.source "SeriesRecordInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/internal/datatypes/SeriesRecordInternal$Sample;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/health/connect/datatypes/IntervalRecord;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/health/connect/internal/datatypes/IntervalRecordInternal<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 31
    .local p0, "this":Landroid/health/connect/internal/datatypes/SeriesRecordInternal;, "Landroid/health/connect/internal/datatypes/SeriesRecordInternal<TT;TU;>;"
    invoke-direct {p0}, Landroid/health/connect/internal/datatypes/IntervalRecordInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist getSamples()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "+",
            "Landroid/health/connect/internal/datatypes/SeriesRecordInternal$Sample;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist setSamples(Ljava/util/Set;)Landroid/health/connect/internal/datatypes/SeriesRecordInternal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Landroid/health/connect/internal/datatypes/SeriesRecordInternal$Sample;",
            ">;)",
            "Landroid/health/connect/internal/datatypes/SeriesRecordInternal;"
        }
    .end annotation
.end method

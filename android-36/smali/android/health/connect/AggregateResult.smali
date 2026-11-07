.class public final Landroid/health/connect/AggregateResult;
.super Ljava/lang/Object;
.source "AggregateResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private blacklist mDataOrigins:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/health/connect/datatypes/DataOrigin;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private blacklist mZoneOffset:Ljava/time/ZoneOffset;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 40
    .local p0, "this":Landroid/health/connect/AggregateResult;, "Landroid/health/connect/AggregateResult<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Landroid/health/connect/AggregateResult;->mResult:Ljava/lang/Object;

    .line 42
    return-void
.end method


# virtual methods
.method public blacklist getDataOrigins()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/health/connect/datatypes/DataOrigin;",
            ">;"
        }
    .end annotation

    .line 69
    .local p0, "this":Landroid/health/connect/AggregateResult;, "Landroid/health/connect/AggregateResult<TT;>;"
    iget-object v0, p0, Landroid/health/connect/AggregateResult;->mDataOrigins:Ljava/util/Set;

    return-object v0
.end method

.method blacklist getResult()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 88
    .local p0, "this":Landroid/health/connect/AggregateResult;, "Landroid/health/connect/AggregateResult<TT;>;"
    iget-object v0, p0, Landroid/health/connect/AggregateResult;->mResult:Ljava/lang/Object;

    return-object v0
.end method

.method public blacklist getZoneOffset()Ljava/time/ZoneOffset;
    .registers 2

    .line 57
    .local p0, "this":Landroid/health/connect/AggregateResult;, "Landroid/health/connect/AggregateResult<TT;>;"
    iget-object v0, p0, Landroid/health/connect/AggregateResult;->mZoneOffset:Ljava/time/ZoneOffset;

    return-object v0
.end method

.method public blacklist putToParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 45
    .local p0, "this":Landroid/health/connect/AggregateResult;, "Landroid/health/connect/AggregateResult<TT;>;"
    iget-object v0, p0, Landroid/health/connect/AggregateResult;->mResult:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Long;

    if-eqz v0, :cond_12

    .line 46
    iget-object v0, p0, Landroid/health/connect/AggregateResult;->mResult:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_23

    .line 47
    :cond_12
    iget-object v0, p0, Landroid/health/connect/AggregateResult;->mResult:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Double;

    if-eqz v0, :cond_23

    .line 48
    iget-object v0, p0, Landroid/health/connect/AggregateResult;->mResult:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 50
    :cond_23
    :goto_23
    return-void
.end method

.method public blacklist setDataOrigins(Ljava/util/List;)Landroid/health/connect/AggregateResult;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/health/connect/AggregateResult<",
            "TT;>;"
        }
    .end annotation

    .line 74
    .local p0, "this":Landroid/health/connect/AggregateResult;, "Landroid/health/connect/AggregateResult<TT;>;"
    .local p1, "packageNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/health/connect/AggregateResult;->mDataOrigins:Ljava/util/Set;

    .line 77
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 78
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Landroid/health/connect/AggregateResult;->mDataOrigins:Ljava/util/Set;

    new-instance v3, Landroid/health/connect/datatypes/DataOrigin$Builder;

    invoke-direct {v3}, Landroid/health/connect/datatypes/DataOrigin$Builder;-><init>()V

    invoke-virtual {v3, v1}, Landroid/health/connect/datatypes/DataOrigin$Builder;->setPackageName(Ljava/lang/String;)Landroid/health/connect/datatypes/DataOrigin$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/health/connect/datatypes/DataOrigin$Builder;->build()Landroid/health/connect/datatypes/DataOrigin;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    .end local v1    # "packageName":Ljava/lang/String;
    goto :goto_e

    .line 80
    :cond_2d
    return-object p0
.end method

.method public blacklist setZoneOffset(Ljava/time/ZoneOffset;)Landroid/health/connect/AggregateResult;
    .registers 2
    .param p1, "zoneOffset"    # Ljava/time/ZoneOffset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/ZoneOffset;",
            ")",
            "Landroid/health/connect/AggregateResult<",
            "TT;>;"
        }
    .end annotation

    .line 62
    .local p0, "this":Landroid/health/connect/AggregateResult;, "Landroid/health/connect/AggregateResult<TT;>;"
    iput-object p1, p0, Landroid/health/connect/AggregateResult;->mZoneOffset:Ljava/time/ZoneOffset;

    .line 63
    return-object p0
.end method

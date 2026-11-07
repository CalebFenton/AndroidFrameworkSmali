.class public final synthetic Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper$AggregationResultCreator;


# instance fields
.field public final synthetic blacklist f$0:Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper$$ExternalSyntheticLambda5;->f$0:Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;

    return-void
.end method


# virtual methods
.method public final blacklist getAggregateResult(Landroid/os/Parcel;)Landroid/health/connect/AggregateResult;
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper$$ExternalSyntheticLambda5;->f$0:Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;

    invoke-static {v0, p1}, Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;->$r8$lambda$FSeJ-2qNS6KhnRWcfZmz4A9cKMo(Landroid/health/connect/internal/datatypes/utils/AggregationTypeIdMapper;Landroid/os/Parcel;)Landroid/health/connect/AggregateResult;

    move-result-object p1

    return-object p1
.end method

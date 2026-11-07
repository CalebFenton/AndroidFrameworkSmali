.class public final synthetic Landroid/health/connect/AggregateRecordsGroupedByPeriodResponse$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/health/connect/AggregateRecordsGroupedByPeriodResponse;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/health/connect/AggregateRecordsGroupedByPeriodResponse;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/health/connect/AggregateRecordsGroupedByPeriodResponse$$ExternalSyntheticLambda0;->f$0:Landroid/health/connect/AggregateRecordsGroupedByPeriodResponse;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/health/connect/AggregateRecordsGroupedByPeriodResponse$$ExternalSyntheticLambda0;->f$0:Landroid/health/connect/AggregateRecordsGroupedByPeriodResponse;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Landroid/health/connect/AggregateResult;

    invoke-static {v0, p1, p2}, Landroid/health/connect/AggregateRecordsGroupedByPeriodResponse;->$r8$lambda$FDOgCPOjX11JNccc04Rxu0z1rS0(Landroid/health/connect/AggregateRecordsGroupedByPeriodResponse;Ljava/lang/Integer;Landroid/health/connect/AggregateResult;)V

    return-void
.end method

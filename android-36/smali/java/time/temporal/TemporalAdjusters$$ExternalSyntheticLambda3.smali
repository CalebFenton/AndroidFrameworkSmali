.class public final synthetic Ljava/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/time/temporal/TemporalAdjuster;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 2

    .line 0
    invoke-static {p1}, Ljava/time/temporal/TemporalAdjusters;->lambda$firstDayOfMonth$1(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object p1

    return-object p1
.end method

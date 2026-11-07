.class public final synthetic Ljava/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/time/temporal/TemporalAdjuster;


# instance fields
.field public final synthetic blacklist f$0:I


# direct methods
.method public synthetic constructor blacklist <init>(I)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ljava/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda6;->f$0:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 3

    .line 0
    iget v0, p0, Ljava/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda6;->f$0:I

    invoke-static {v0, p1}, Ljava/time/temporal/TemporalAdjusters;->lambda$nextOrSame$10(ILjava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object p1

    return-object p1
.end method

.class public final synthetic Ljava/time/LocalDate$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/LongFunction;


# instance fields
.field public final synthetic blacklist f$0:J

.field public final synthetic blacklist f$1:J


# direct methods
.method public synthetic constructor blacklist <init>(JJ)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ljava/time/LocalDate$$ExternalSyntheticLambda2;->f$0:J

    iput-wide p3, p0, Ljava/time/LocalDate$$ExternalSyntheticLambda2;->f$1:J

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(J)Ljava/lang/Object;
    .registers 9

    .line 0
    iget-wide v0, p0, Ljava/time/LocalDate$$ExternalSyntheticLambda2;->f$0:J

    iget-wide v2, p0, Ljava/time/LocalDate$$ExternalSyntheticLambda2;->f$1:J

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Ljava/time/LocalDate;->lambda$datesUntil$0(JJJ)Ljava/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

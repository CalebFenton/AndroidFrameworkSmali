.class public final synthetic Ljava/time/LocalDate$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/LongFunction;


# instance fields
.field public final synthetic blacklist f$0:Ljava/time/LocalDate;

.field public final synthetic blacklist f$1:J

.field public final synthetic blacklist f$2:J


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/time/LocalDate;JJ)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/time/LocalDate$$ExternalSyntheticLambda3;->f$0:Ljava/time/LocalDate;

    iput-wide p2, p0, Ljava/time/LocalDate$$ExternalSyntheticLambda3;->f$1:J

    iput-wide p4, p0, Ljava/time/LocalDate$$ExternalSyntheticLambda3;->f$2:J

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(J)Ljava/lang/Object;
    .registers 10

    .line 0
    iget-object v0, p0, Ljava/time/LocalDate$$ExternalSyntheticLambda3;->f$0:Ljava/time/LocalDate;

    iget-wide v1, p0, Ljava/time/LocalDate$$ExternalSyntheticLambda3;->f$1:J

    iget-wide v3, p0, Ljava/time/LocalDate$$ExternalSyntheticLambda3;->f$2:J

    move-wide v5, p1

    invoke-static/range {v0 .. v6}, Ljava/time/LocalDate;->$r8$lambda$_F9R3tO1ec4OgKCG1wZ0IZwxkQQ(Ljava/time/LocalDate;JJJ)Ljava/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

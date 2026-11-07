.class Lcom/android/internal/app/procstats/ProcessState$1;
.super Ljava/lang/Object;
.source "ProcessState.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/procstats/ProcessState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/internal/app/procstats/ProcessState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist compare(Lcom/android/internal/app/procstats/ProcessState;Lcom/android/internal/app/procstats/ProcessState;)I
    .registers 7
    .param p1, "lhs"    # Lcom/android/internal/app/procstats/ProcessState;
    .param p2, "rhs"    # Lcom/android/internal/app/procstats/ProcessState;

    .line 110
    invoke-static {p1}, Lcom/android/internal/app/procstats/ProcessState;->-$$Nest$fgetmTmpTotalTime(Lcom/android/internal/app/procstats/ProcessState;)J

    move-result-wide v0

    invoke-static {p2}, Lcom/android/internal/app/procstats/ProcessState;->-$$Nest$fgetmTmpTotalTime(Lcom/android/internal/app/procstats/ProcessState;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_e

    .line 111
    const/4 v0, -0x1

    return v0

    .line 112
    :cond_e
    invoke-static {p1}, Lcom/android/internal/app/procstats/ProcessState;->-$$Nest$fgetmTmpTotalTime(Lcom/android/internal/app/procstats/ProcessState;)J

    move-result-wide v0

    invoke-static {p2}, Lcom/android/internal/app/procstats/ProcessState;->-$$Nest$fgetmTmpTotalTime(Lcom/android/internal/app/procstats/ProcessState;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1c

    .line 113
    const/4 v0, 0x1

    return v0

    .line 115
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 107
    check-cast p1, Lcom/android/internal/app/procstats/ProcessState;

    check-cast p2, Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/procstats/ProcessState$1;->compare(Lcom/android/internal/app/procstats/ProcessState;Lcom/android/internal/app/procstats/ProcessState;)I

    move-result p1

    return p1
.end method

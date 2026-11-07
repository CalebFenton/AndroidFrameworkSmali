.class Lcom/android/internal/os/ProcessCpuTracker$1;
.super Ljava/lang/Object;
.source "ProcessCpuTracker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/ProcessCpuTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist compare(Lcom/android/internal/os/ProcessCpuTracker$Stats;Lcom/android/internal/os/ProcessCpuTracker$Stats;)I
    .registers 9
    .param p1, "sta"    # Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .param p2, "stb"    # Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 302
    iget v0, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    add-int/2addr v0, v1

    .line 303
    .local v0, "ta":I
    iget v1, p2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget v2, p2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    add-int/2addr v1, v2

    .line 304
    .local v1, "tb":I
    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_13

    .line 305
    if-le v0, v1, :cond_11

    goto :goto_12

    :cond_11
    move v2, v3

    :goto_12
    return v2

    .line 307
    :cond_13
    iget-boolean v4, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    iget-boolean v5, p2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    if-eq v4, v5, :cond_20

    .line 308
    iget-boolean v4, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    if-eqz v4, :cond_1e

    goto :goto_1f

    :cond_1e
    move v2, v3

    :goto_1f
    return v2

    .line 310
    :cond_20
    iget-boolean v4, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    iget-boolean v5, p2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    if-eq v4, v5, :cond_2d

    .line 311
    iget-boolean v4, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    if-eqz v4, :cond_2b

    goto :goto_2c

    :cond_2b
    move v2, v3

    :goto_2c
    return v2

    .line 313
    :cond_2d
    const/4 v2, 0x0

    return v2
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

    .line 299
    check-cast p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    check-cast p2, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/ProcessCpuTracker$1;->compare(Lcom/android/internal/os/ProcessCpuTracker$Stats;Lcom/android/internal/os/ProcessCpuTracker$Stats;)I

    move-result p1

    return p1
.end method

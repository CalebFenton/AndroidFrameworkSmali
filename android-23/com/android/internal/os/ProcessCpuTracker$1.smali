.class final Lcom/android/internal/os/ProcessCpuTracker$1;
.super Ljava/lang/Object;
.source "ProcessCpuTracker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/ProcessCpuTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public final compare(Lcom/android/internal/os/ProcessCpuTracker$Stats;Lcom/android/internal/os/ProcessCpuTracker$Stats;)I
    .locals 6
    .param p1, "sta"    # Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .param p2, "stb"    # Lcom/android/internal/os/ProcessCpuTracker$Stats;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, -0x1

    #@2
    .line 268
    iget v4, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    #@4
    iget v5, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    #@6
    add-int v0, v4, v5

    #@8
    .line 269
    .local v0, "ta":I
    iget v4, p2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    #@a
    iget v5, p2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    #@c
    add-int v1, v4, v5

    #@e
    .line 270
    .local v1, "tb":I
    if-eq v0, v1, :cond_1

    #@10
    .line 271
    if-le v0, v1, :cond_0

    #@12
    :goto_0
    return v2

    #@13
    :cond_0
    move v2, v3

    #@14
    goto :goto_0

    #@15
    .line 273
    :cond_1
    iget-boolean v4, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    #@17
    iget-boolean v5, p2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    #@19
    if-eq v4, v5, :cond_3

    #@1b
    .line 274
    iget-boolean v4, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    #@1d
    if-eqz v4, :cond_2

    #@1f
    :goto_1
    return v2

    #@20
    :cond_2
    move v2, v3

    #@21
    goto :goto_1

    #@22
    .line 276
    :cond_3
    iget-boolean v4, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    #@24
    iget-boolean v5, p2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    #@26
    if-eq v4, v5, :cond_5

    #@28
    .line 277
    iget-boolean v4, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    #@2a
    if-eqz v4, :cond_4

    #@2c
    :goto_2
    return v2

    #@2d
    :cond_4
    move v2, v3

    #@2e
    goto :goto_2

    #@2f
    .line 279
    :cond_5
    const/4 v2, 0x0

    #@30
    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "sta"    # Ljava/lang/Object;
    .param p2, "stb"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 267
    check-cast p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    #@2
    .end local p1    # "sta":Ljava/lang/Object;
    check-cast p2, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    #@4
    .end local p2    # "stb":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/ProcessCpuTracker$1;->compare(Lcom/android/internal/os/ProcessCpuTracker$Stats;Lcom/android/internal/os/ProcessCpuTracker$Stats;)I

    #@7
    move-result v0

    #@8
    return v0
.end method
